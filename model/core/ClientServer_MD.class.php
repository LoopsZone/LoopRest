<?php

class ClientServer_MD
{
	private $ip;
	private $url;
	private $host;
	private $route;
	private $domain;
	private $method;
	private $request;
	private $headers;
  private $hostName;
  private $protocol;
	private $userAgent;
	private $redirectURL;
	static private $singleton;

	private function __construct()
	{
		$this->ip = $this->setIp();
		$this->request = $_REQUEST;
    $this->hostName = gethostname();
		$this->host = $_SERVER['HTTP_HOST'];
		$this->url = $_SERVER['REQUEST_URI'];
		$this->domain = $_SERVER['SERVER_NAME'];
		$this->headers = $this->getAllHeaders();
		$this->method = $_SERVER['REQUEST_METHOD'];
    $this->redirectURL = $_SERVER['REDIRECT_URL'];
    $this->protocol = $_SERVER['SERVER_PROTOCOL'];
		$this->userAgent = $_SERVER['HTTP_USER_AGENT'];

		$this->route = $this->setRoute();
	}

	/**
	 * get a singleton instance of ClientServer_MD
	 *
	 * @return ClientServer_MD
	 */
	public static function getInstance()
	{
		if(is_null(self::$singleton)){
			self::$singleton = new ClientServer_MD();
		}

		return self::$singleton;
	}

	/**
	 * Set ip
	 *
	 * @return mixed
	 */
	private function setIp()
	{
		if(!empty($_SERVER['HTTP_CLIENT_IP'])){
			return $_SERVER['HTTP_CLIENT_IP'];
		}else if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
			return $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else{
			return $_SERVER['REMOTE_ADDR'];
		}
	}

	/**
	 * Set current url route
	 *
	 * @return bool|string
	 */
	private function setRoute()
	{
		$route = $this->url;
		if(strpos($route, '?')){
			$route = strstr($this->url, '?', true);
		}

		return GlobalSystem::validateData($route, GlobalSystem::ExpFormatRoutes);
	}

	/**
	 * Get Url
	 *
	 * @return mixed
	 */
	public function getUrl()
  {
		return $this->url;
	}

  /**
   * @return mixed
   */
  public function getRedirectURL()
  {
    return $this->redirectURL;
  }

	/**
	 * Get domain
	 *
	 * @return mixed
	 */
	public function getDomain()
  {
		return $this->domain;
	}

	/**
	 * @return mixed
	 */
	public function getIp()
	{
		return $this->ip;
	}

	/**
	 * @return mixed
	 */
	public function getHost()
	{
		return $this->host;
	}

	/**
	 * @return mixed
	 */
	public function getMethod()
	{
		return $this->method;
	}

	/**
	 * @return array
	 */
	public function getHeaders()
	{
		return $this->headers;
	}

	/**
	 * @return mixed
	 */
	public function getUserAgent()
	{
		return $this->userAgent;
	}

  /**
   * Get All Headers
   *
   * @return array
   */
	private function getAllHeaders()
  {
    $headers = [];
    foreach($_SERVER as $name => $value){
      if(substr($name, 0, 5) == 'HTTP_'){
        $headers[str_replace(' ', '-', ucwords(strtolower(str_replace('_', ' ', substr($name, 5)))))] = $value;
      }
    }

    return $headers;
  }

	/**
	 * Get current header request
	 *
	 * @param $target
	 * @return bool
	 */
	public function getHeader($target)
	{
		$settingHeaders = GlobalSystem::AllowHeaders;
		foreach($this->headers as $header => $value){
			if($header == $target){
				if(isset($settingHeaders) && !is_null($settingHeaders) && !empty($settingHeaders) && $settingHeaders != ''){
					foreach(GlobalSystem::AllowHeaders as $allowHeader){
						if($allowHeader == $target){
							return $value;
						}
					}
				}
			}
		}

		return false;
	}

	/**
	 * Get current url route
	 *
	 * @return bool|string
	 */
	public function getRoute()
	{
		return $this->route;
	}

	/**
	 * @return mixed
	 */
	public function getRequest()
	{
		return $this->request;
	}

  /**
   * @return string
   */
  public function getHostName(): string
  {
    return $this->hostName;
  }

  /**
   * @return mixed
   */
  public function getProtocol()
  {
    return $this->protocol;
  }
}