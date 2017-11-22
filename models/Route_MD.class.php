<?php

class Route_MD
{
	private $route = null;
	private $action = null;
	private $trigger = null;
	private $request = array();
	private $authorization = null;
	private $responseObject = null;
	
	private static $singleton;
	
	public static function getInstance ()
	{
		
		if(is_null(self::$singleton)) {
			self::$singleton = new Route_MD();
		}
		
		return self::$singleton;
	}
	
	/**
	 * @return mixed
	 */
	public function getRoute ()
	{
		return $this->route;
	}
	
	/**
	 * @param mixed $route
	 */
	public function setRoute ($route)
	{
		$this->route = $route;
	}
	
	/**
	 * Get request params
	 *
	 * @param null $param
	 * @return mixed
	 */
	public function getRequest ($param = null)
	{
		if(key_exists($this->route, $this->request)) {
			
			if($param) {
				if(key_exists($param, $this->request[$this->route])){
					return $this->request[$this->route][$param];
				}
				
				$message = "Error get param {$param} in this request";
				throw new Exception($message, 5);
			}
			
			return $this->request[$this->route];
		}
		
		return false;
	}
	
	/**
	 * @param mixed $request
	 */
	public function setRequest ($request)
	{
		if($this->validateRequest($request)) {
			$this->request[$this->route] = $request[$this->route];
		}
	}
	
	/**
	 * Validate data in request array and set data in $this->variables
	 *
	 * @param $data
	 * @return bool
	 */
	protected function validateRequest ($request)
	{
		$error = array();
		//Validate if value to key in data is false or not valid and return
		foreach($request as $key => $value) {
			
			if(is_array($value) || is_object($value)) {
				foreach($value as $subKey => $subValue) {
					if($subValue === false) {
						$error[$key][$subKey] = "Invalid value in {$subValue} key to this request";
					}
				}
			}else{
				if($value == false) {
					$error[$key] = "Invalid empty value in {$key} key to this request";
				}
			}
		}
		
		// If request array is set return error list in this request
		if(count($error) > 0) {
			
			$this->route = RequestRoute::ExpRouteError;
			$this->request[GlobalSystem::ExpRouteError] = $error;
			$message = json_encode($error);
			throw  new Exception($message, 3);
		}
		
		$this->request = $request;
		
		return true;
	}
	
	/**
	 * Check if route not change, if change active new trigger
	 *
	 * @return bool
	 */
	private function checkRoute ()
	{
		if(key_exists($this->route, RequestRoute::$routes)) {
			$this->trigger = RequestRoute::$routes[$this->route][GlobalSystem::ExpRouteKeyTrigger];
			
			return true;
		}
		
		return false;
	}
	
	public function getTrigger ()
	{
		$this->checkRoute();
		return $this->trigger;
	}
	
	public function getAuthorization()
	{
			return $this->authorization;
	}
	
	public function setAuthorization($auth)
	{
		$this->authorization = $auth;
	}
	
	public function getAction()
	{
		return $this->action;
	}
	
	public function setAction($action)
	{
		$this->action = $action;
	}
	
	public function getResponseObject(){
		return $this->responseObject;
	}
	
	public  function setResponseObject($responseObject)
	{
		$this->responseObject = $responseObject;
	}
}