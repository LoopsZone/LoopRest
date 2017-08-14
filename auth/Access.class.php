<?php

/**
 * Class Access
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Access extends AccessDB
{
    protected $setProperties;
    private $route;
    private $trigger;
    private $routeName;
    private $variables;

    protected static function getData($token, $request)
    {
        $user = Token::getData($token);
        return $user;//$this->auth->search($request.'/'.$user->id,TRUE);
    }

    /**
     * Save data in public global property
     *
     * @param $data
     * @return bool
     */
    protected function setProperties($data)
    {
        if (is_array($data) || is_object($data)) {

            // Generate set to variables that need request
            $setDataKeys = array_keys($data);
            $setProperties = array_keys(ExpectVariables::$properties);

            if ($setDataKeys == $setProperties) {

                $setDataKeys = array();

                foreach (ExpectVariables::$properties as $param => $format) {

                    if (is_array($data[$param])) {
                        foreach ($data[$param] as $arrayParam => $paramValue) {
                            $setDataKeys[$param][$arrayParam] = $this->validateData($paramValue, $format);
                        }
                    } else {
                        $setDataKeys[$param] = $this->validateData($data[$param], $format);
                    }
                }

                $this->validate($setDataKeys);

                return true;
            }
        }

        return false;
    }
    
    /**
     * Validate data to data into request array and is certificated if is right format
     *
     * @param $data
     * @param $format
     * @return bool|mixed|string
     */
    protected static function validateData($data, $format)
    {
        return GlobalSystem::validateData($data, $format);
    }

    /**
     * Validate data in request array and set data in $this->variables
     *
     * @param $data
     * @return array
     */
    protected function validate($data)
    {
        $error = array();
        //Validate if value to key in data is false or not valid and return
        foreach ($data as $key => $value) {

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

            $this->routeName = RequestRoute::ExpRouteError;
            $this->variables[Expected::ExpRouteError] = $error;

            return false;
        }

        $this->variables = $data;

        return true;
    }

    protected function checkInputSystem($countParams, $parameter, $value)
    {
        if ($countParams > 0) {

            $request = null;
            $routeName = null;

            // Generate set to variables that need request
            foreach (RequestRoute::$routes as $set => $route) {
                foreach ($route[GlobalSystem::ExpRouteKeyParams] as $param => $format) {
                    for ($i = 0; $i < $countParams; $i++) {
                        if ($param == $parameter[$i]) {
                            $routeName = $set;
                            $request[$set][$param] = $this->validateData($value[$i], $format);
                        }
                    }
                }
            }

            $this->routeName = $routeName;
            $this->variables = $request;

            return true;
        }

        $this->routeName = Expected::ExpRouteView;

        return false;
    }

    protected function checkTrigger()
    {
        if (key_exists($this->routeName, RequestRoute::$routes)) {

            $this->trigger = RequestRoute::$routes[$this->routeName][GlobalSystem::ExpRouteKeyTrigger];
        }
    }

    protected function checkRoute()
    {
        if (key_exists($this->routeName, RequestRoute::$routes)) {
            $this->trigger = RequestRoute::$routes[$this->routeName][GlobalSystem::ExpRouteKeyTrigger];
        }
    }

    /**
     * @param $id
     * @param $email
     * @param $name
     * @param $birthday
     * @param $cellphone
     *
     * @return string
     */
    protected function auth()
    {
        $auth = $this->getProperty(Expected::ExpRequestRequest);

        return Auth::signIn([
            'access' => 0,
            'id' => $auth[RequestRoute::ExpAuthId],
            'name' => $auth[RequestRoute::ExpAuthName]
        ]);
    }

    /**
     * @param $expect
     * @return bool
     */
    protected function getProperty($expect)
    {
        if (key_exists($expect, $this->variables)) {
            return $this->variables[$expect];
        }

        $mapRequest = array();
        $mapRequest[$expect] = $this->variables;
        $mapRequest[$expect][ExpectVariables::ExpSetProperties] = $this->setProperties;

        if ($this->routeName) {
            $mapRequest[$expect][ExpectVariables::ExpSetVariableRoute] = RequestRoute::$routes[$this->routeName];
        }

        throw new ExceptionGetProperties($mapRequest);
    }

    protected static function signIn($data)
    {
        return Token::signIn($data);
    }

    protected function validateTrigger()
    {
        if ($this->trigger) {
            switch ($this->trigger) {
                case 'ERROR' :
                    return $this->error();
                default :
                    return $this->error();

            }
        }

        return false;
    }

    protected function error()
    {
        return $this->variables;
    }

    protected function getRoute()
    {
        return $this->routeName;
    }

    protected function getTrigger()
    {
        return $this->trigger;
    }

    protected function views()
    {

    }

    protected function check()
    {
        $token = $this->setParam(Token::ExpRequestToken);
        return Token::check($token);
    }

    protected function requestSystemData()
    {

    }

    protected function putSystemData()
    {

    }

    protected function dismissSystemData()
    {

    }

    protected function updateSystemData()
    {

    }
}