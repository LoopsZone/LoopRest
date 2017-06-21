<?php

//require_once DIR . '/auth/Auth.class.php';
//require_once DIR . '/auth/Output.class.php';

class Manager extends Auth
{
    protected $ip;
    protected $client;
    protected $device;
    protected $method;

    public function output($request)
    {
        $this->route = Output::checkRoute($request);
        $execute = Output::executeAction($this->route, $this->method);
        $this->setParams($request);
        $response = $this->action($execute);
        if (is_array($response)) {
            $result = json_encode($response);
            $response = ($_GET["callback"] . "({$result});");//Response data type JSON cross domain
        }

        return $response;
    }

    protected function setParams($data)
    {
        if (key_exists($this->route, $data)) {
            $this->variables = $data[$this->route];

            return true;
        }

        return false;
    }

    /**
     * @return bool|string|array
     */
    protected function action($route)
    {
        switch ($route) {

            case 'GET':
                return $this->request();
            case 'POST':
                return $this->insert();
            case 'PUT':
                return $this->update();
            case 'DELETE':
                return $this->delete();
            case 'AUTH':
                return $this->auth();
            case 'ERROR':
                return $this->error();
            case 'VIEWS':
                return $this->views();
            default:
                return 'Action selected no valid';
        }
    }

    /**
     * @param $tk
     * @param $request
     *
     * @return string|array
     */
    private function request()
    {
        $checkTK = Auth::check();

        if ($checkTK === 'access') {

            $request = $this->setParam(Request_Route::$expectedRequest);
            
            if ($request != 'access') {

                $response = Auth::getData(
                    $this->routes[Token::$expectToken],
                    $this->routes[Request_Route::$expectedRequest]
                );

                return $response;
            }

            return 'access to web services';
        }

        return ['error' => $checkTK];
    }

    private function insert()
    {

    }

    private function update()
    {

    }

    private function delete()
    {

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
    private function auth()
    {
        $id = $this->setParam(Request_Route::$expectedId);
        $name = $this->setParam(Request_Route::$expectedName);
        $email = $this->setParam(Request_Route::$expectedEmail);
        $birthday = $this->setParam(Request_Route::$expectedBirthday);

        $result = Auth::signIn([
            'access' => 0,
            'id' => $id,
            'name' => $name
        ]);

        return $result;
    }

    private function error()
    {

    }

    private function views()
    {

    }
}