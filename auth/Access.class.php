<?php

/**
 * Class Access
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Access extends AccessDB
{
    protected $setVariables;
    private $ip;
    private $route;
    private $client;
    private $device;
    private $method;
    private $headers;
    private $trigger;
    private $variables;
    private $routeName;

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
    protected function setVariables($data, $routeName = null)
    {
        if (is_array($data) || is_object($data)) {

            if ($routeName) {

                if (key_exists($routeName, RequestRoute::$routes)) {

                    $setData = array_keys($data[$routeName]);
                    $setRoute = array_keys(RequestRoute::$routes[$routeName][GlobalSystem::ExpRouteKeyParams]);

                    if ($setData == $setRoute) {

                        $this->route = array();

                        foreach ($setRoute as $param) {
                            foreach ($setData as $value) {

                                if ($param == $value) {
                                    $this->route[$routeName][$param] = $data[$routeName][$value];
                                }
                            }
                        }
                    }

                    $this->variables = $this->route;
                }

            } else {

                // Generate set to variables that need request
                $setData = array_keys($data);
                $setVariables = array_keys(ExpectVariables::$variables);

                if ($setData == $setVariables) {

                    foreach (ExpectVariables::$variables as $param => $format) {
                        $this->setVariables[$param] = $this->validateData($data[$param], $format);
                    }

                    $this->validate($this->setVariables);
                    $this->setVariables = $data;
                }
            }
        }
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
     * Validate data in request array
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

                $validArray = $this->validate($value);

                if (key($validArray) == 'error') {
                    $error = $validArray;
                }
            }

            if ($value == false) {
                $error[$key] = "Invalid value in {$key} key to this request";
            }
        }
        // If request array is set return error list in this request
        if (count($error) > 0) {

            $this->routeName = RequestRoute::ExpRouteError;
            $this->checkTrigger();

            $this->variables[$this->routeName] = $error;

            return false;
        }

        $this->variables = $data;

        return true;
    }

    protected function checkTrigger()
    {
        if (key_exists($this->routeName, RequestRoute::$routes)) {

            $this->trigger = RequestRoute::$routes[$this->routeName][GlobalSystem::ExpRouteKeyTrigger];
        }
    }

    protected function checkInputSystem($countParams, $parameter, $value)
    {
        if ($countParams > 0) {

            $this->route = array();
            // Generate set to variables that need request
            foreach (RequestRoute::$routes as $set => $route) {
                foreach ($route[GlobalSystem::ExpRouteKeyParams] as $param => $format) {
                    for ($i = 0; $i < $countParams; $i++) {
                        if ($param == $parameter[$i]) {
                            $this->routeName = $set;
                            $this->route[$set][$param] = $this->validateData($value[$i], $format);
                        }
                    }
                }
            }

            if (count($this->route[$this->routeName]) > $countParams) {

                return [
                    'error' => [
                        'description' => 'Error to set params'
                    ]
                ];
            }

            return $this->validate($this->route);
        }

        return ['views' => 'home'];
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
        $auth = array();

        $auth[RequestRoute::ExpAuthId] = $this->getProperty(RequestRoute::ExpAuthId);
        $auth[RequestRoute::ExpAuthName] = $this->getProperty(RequestRoute::ExpAuthName);
        $auth[RequestRoute::ExpAuthEmail] = $this->getProperty(RequestRoute::ExpAuthEmail);
        $auth[RequestRoute::ExpAuthBirthday] = $this->getProperty(RequestRoute::ExpAuthBirthday);
        $this->validate($auth);

        if (!$this->trigger) {

            return Auth::signIn([
                'access' => 0,
                'id' => $auth[RequestRoute::ExpAuthId],
                'name' => $auth[RequestRoute::ExpAuthName]
            ]);
        }

        return $this->validateTrigger();
    }

    /**
     * @param $expect
     * @return bool
     */
    protected function getProperty($expect, $key = null)
    {
        if (key_exists($expect, $this->variables)) {

            if (is_array($this->variables[$expect]) || is_object($this->variables[$expect])) {

                if ($key) {

                    if (key_exists($key, $this->variables[$expect])) {

                        return $this->variables[$expect][$key];
                    }
                } else {
                    
                }

                throw new GeneralException('Error al obtener valor');
            }

            return $this->variables[$expect];
        }

        $mapRequest = array();
        $mapRequest[$expect] = $this->variables;
        $mapRequest[$expect][ExpectVariables::ExpSetVariables] = $this->setVariables;

        if ($this->route) {
            $mapRequest[$expect][ExpectVariables::ExpSetVariableRoute] = RequestRoute::$routes[$this->route];
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