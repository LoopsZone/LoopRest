<?php

class Route_MD
{
  private $body;
	private $route;
  private $params;
	private $action;
	private $method;
	private $trigger;
	private $userLogin;
  private $codeResponse;
	private $authorization;
  private $callback = false;
	private $request = array();
  private $descriptionResponse;
	private $responseObject = true;

	private static $singleton;

	/**
	 * @return Route_MD
	 */
	public static function getInstance()
	{
		if(is_null(self::$singleton)) {
			self::$singleton = new Route_MD();
		}

		return self::$singleton;
	}

	/**
	 * @return mixed
	 */
	public function getRoute()
	{
		return $this->route;
	}

	/**
	 * @param mixed $route
	 */
	public function setRoute($route)
	{
		$this->route = $route;
	}

	/**
	 * Get request params
	 *
	 * @param null $param
	 * @return mixed
	 */
	public function getRequest($param = null)
	{
    $route = GlobalSystem::translateSystemRoute();

		if(key_exists($route, $this->request)){
			if($param){
				if(key_exists($param, $this->request[$route])){
					return $this->request[$route][$param];
				}
			}

			return $this->request[$route];
		}
 
		return false;
	}

  /**
   * @param $request
   * @throws Exception
   */
	public function setRequest($request)
	{
		if($this->validateRequest($request)){
			$route = GlobalSystem::translateSystemRoute();
			$this->request[$route] = $request[$route];
		}
	}

  /**
   * Validate data in request array and set data in $this->variables
   *
   * @param $request
   * @return bool
   * @throws Exception
   */
	protected function validateRequest($request)
	{
		$error = [];
		foreach($request as $key => $value){
			if(is_array($value) || is_object($value)){
				foreach($value as $subKey => $subValue){
					if($subValue === false){
						$error[$subKey] = "Invalid value in {$subKey} param in this request";
					}
				}
			}else{
				if($value == false){
					$error = "Invalid empty value in {$key} param in this request";
				}
			}
		}

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
	  $route = GlobalSystem::translateSystemRoute();
		if(key_exists($route, RequestRoute::$routes)){
			$this->trigger = RequestRoute::$routes[$route][GlobalSystem::ExpRouteKeyTrigger];

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

  /**
   * @return mixed
   */
  public function getParams()
  {
    return $this->params;
  }

  /**
   * @param mixed $params
   */
  public function setParams($params)
  {
    $this->params = $params;
  }

  /**
   * @return mixed
   */
  public function getCodeResponse()
  {
    return $this->codeResponse;
  }

  /**
   * @param mixed $codeResponse
   */
  public function setCodeResponse($codeResponse)
  {
    $this->codeResponse = $codeResponse;
  }

  /**
   * @return mixed
   */
  public function getDescriptionResponse()
  {
    return $this->descriptionResponse;
  }

  /**
   * @param mixed $descriptionResponse
   */
  public function setDescriptionResponse($descriptionResponse)
  {
    $this->descriptionResponse = $descriptionResponse;
  }

	/**
	 * @return mixed
	 */
	public function getUserLogin()
	{
		return $this->userLogin;
	}

	/**
	 * @param mixed $userLogin
	 */
	public function setUserLogin($userLogin)
	{
		$this->userLogin = $userLogin;
	}

  /**
   * @return mixed
   */
  public function getBody()
  {
    return $this->body;
  }

  /**
   * @param mixed $body
   */
  public function setBody($body)
  {
    $this->body = $body;
  }
}