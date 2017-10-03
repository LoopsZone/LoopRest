<?php

class Route_MD {
    
    private $route = null;
    private $trigger = null;
    private $request = array();

    private static $singleton;

    public static function getInstance() {

        if (is_null(self::$singleton)) {
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
     * @return mixed
     */
    public function getRequest($param = null)
    {
        if ($param) {
            if (key_exists($this->route, $this->request)) {
                return $this->request[$this->route][$param];
            }
        }

        return false;
    }

    /**
     * @param mixed $request
     */
    public function setRequest($request)
    {
        if ($this->validateRequest($request)) {
            $this->request[$this->route] = $request[$this->route];
        }
    }

    /**
     * Validate data in request array and set data in $this->variables
     *
     * @param $data
     * @return array
     */
    protected function validateRequest($request)
    {
        $error = array();
        //Validate if value to key in data is false or not valid and return
        foreach ($request as $key => $value) {

            if (is_array($value) || is_object($value)) {

                foreach ($value as $subKey => $subValue) {
                    if ($subValue == false) {
                        $error[$key][$subKey] = "Invalid value in {$subValue} key to this request";
                    }
                }

            } else {

                if ($value == false) {
                    $error[$key] = "Invalid value in {$key} key to this request";
                }
            }
        }

        // If request array is set return error list in this request
        if (count($error) > 0) {

            $this->route = RequestRoute::ExpRouteError;
            $this->variables[Expected::ExpRouteError] = $error;

            return false;
        }

        $this->variables = $request;

        return true;
    }

    public function checkRoute()
    {
        if (key_exists($this->route, RequestRoute::$routes)) {
            $this->trigger = RequestRoute::$routes[$this->route][GlobalSystem::ExpRouteKeyTrigger];

            return true;
        }

        return false;
    }

    public function getTrigger()
    {
        return $this->trigger;
    }
}