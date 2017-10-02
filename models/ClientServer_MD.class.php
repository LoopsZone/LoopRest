<?php

class ClientServer_MD {

    private $ip;
    private $host;
    private $method;
    private $headers;
    private $userAgent;

    static private $singleton;

    /**
     * get a singleton instance of ClientServer_MD
     * 
     * @return ClientServer_MD
     */
    public static function getInstance()
    {
        if (is_null(self::$singleton))
        {
            self::$singleton = new ClientServer_MD();
        }

        return self::$singleton;
    }

    private function __construct()
    {
        $this->ip = $this->setIp();
        $this->headers = headers_list();
        $this->host = $_SERVER['HTTP_HOST'];
        $this->method = $_SERVER['REQUEST_METHOD'];
        $this->userAgent = $_SERVER['HTTP_USER_AGENT'];
    }

    private  function  setIp() {

        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            return $_SERVER['HTTP_CLIENT_IP'];
        } else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            return $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            return $_SERVER['REMOTE_ADDR'];
        }
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

    public function getHeader($target) {

        $settingHeaders = GlobalConstants::$allowHeaders;

        foreach ($this->headers as $header) {

            $currentHeader = explode(':', $header);

            if ($currentHeader[0] == $target) {

                if (isset($settingHeaders) && !is_null($settingHeaders) && !empty($settingHeaders) && $settingHeaders != '') {

                    foreach (GlobalConstants::$allowHeaders as $allowHeader) {
                        if ($allowHeader == $target) {
                            return $currentHeader[1];
                        }
                    }
                }
            }
        }

        return false;
    }
}