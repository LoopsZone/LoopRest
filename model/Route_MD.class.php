<?php

class Route_MD
{
	private $route;
	private $action;
	private $method;
	private $trigger;
	private $authorization;
  private $callback = false;
	private $request = array();
	private $responseObject = true;

	private static $singleton;

	/**
	 * @return Route_MD
	 */
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
		if($this->validateRequest($request)){
			$this->request[$this->route] = $request[$this->route];
		}
	}

	/**
	 * Validate data in request array and set data in $this->variables
	 *
	 * @param $data
	 * @return bool
	 */
	protected function validateRequest($request)
	{
		$error = array();
		//Validate if value to key in data is false or not valid and return
		foreach($request as $key => $value){
			if(is_array($value) || is_object($value)){
				foreach($value as $subKey => $subValue){
					if($subValue === false){
						$error[$subKey] = "Invalid value in {$subValue} key to this request";
					}
				}
			}else{
				if($value == false){
					$error= "Invalid empty value in {$key} key to this request";
				}
			}
		}

		// If request array is set return error list in this request
		if(count($error) > 0){
			$this->route = RequestRoute::ExpRouteError;
			$this->request[GlobalSystem::ExpRouteError] = $error;

			$errorCode = ErrorCodes::HttpParamsExc;
			$errorCode[GlobalSystem::ExpErrorDesc] = json_encode($error);

			ErrorManager::throwException($errorCode);
		}

		$this->request = $request;

		return true;
	}

	/**
	 * Check if route not change, if change active new trigger
	 *
	 * @return bool
	 */
	private function checkRoute()
	{
		if(key_exists($this->route, RequestRoute::$routes)){
			$this->trigger = RequestRoute::$routes[$this->route][GlobalSystem::ExpRouteKeyTrigger];

			return true;
		}

		return false;
	}

	/**
	 * @return string
	 */
	public function getTrigger()
	{
		$this->checkRoute();
		return $this->trigger;
	}

	/**
	 * @return mixed
	 */
	public function getAuthorization()
	{
			return $this->authorization;
	}

	/**
	 * @param $auth
	 */
	public function setAuthorization($auth)
	{
		$this->authorization = $auth;
	}

	/**
	 * @return mixed
	 */
	public function getAction()
	{
		return $this->action;
	}

	/**
	 * @param $action
	 */
	public function setAction($action)
	{
		$this->action = $action;
	}

	/**
	 * @return mixed
	 */
	public function getResponseObject()
	{
		return $this->responseObject;
	}

	/**
	 * @param $responseObject
	 */
	public  function setResponseObject($responseObject)
	{
		$this->responseObject = $responseObject;
	}

	/**
	 * @return mixed
	 */
	public function getMethod()
	{
		return $this->method;
	}

	/**
	 * @param mixed $method
	 */
	public function setMethod($method)
	{
		$this->method = $method;
	}

  /**
   * @return string
   */
  public function getCallback()
  {
    return $this->callback;
  }

  /**
   * @param string $callback
   */
  public function setCallback($callback)
  {
    $this->callback = $callback;
  }
}