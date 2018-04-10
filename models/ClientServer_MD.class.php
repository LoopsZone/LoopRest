<?php

class ClientServer_MD
{
	static private $singleton;
	private $ip;
	private $url;
	private $host;
	private $domain;
	private $method;
	private $headers;
	private $userAgent;

	private function __construct()
	{
		$this->ip = $this->setIp();
		$this->host = $_SERVER['HTTP_HOST'];
		$this->url = $_SERVER['REQUEST_URI'];
		$this->domain = $_SERVER['SERVER_NAME'];
		$this->headers = apache_request_headers();
		$this->method = $_SERVER['REQUEST_METHOD'];
		$this->userAgent = $_SERVER['HTTP_USER_AGENT'];
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
	 * Get Url
	 *
	 * @return mixed
	 */
	public function getUrl(){
		return $this->url;
	}

	/**
	 * Get domain
	 *
	 * @return mixed
	 */
	public function getDomain(){
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
}