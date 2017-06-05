<?php

require_once DIR . '/auth/Auth.class.php';

class Manager extends Auth
{
    protected $ip;
    protected $client;
    protected $device;
    protected $method;

    public function output($request)
    {
        if (key($request) != $this->set) {
            if (key_exists($this->set, Request_Route::$trigger)) {
                $this->set = key($request);
            }
        }

        //If this data have a trigger, change next action execute
        if (key_exists($this->set, Request_Route::$trigger)) {

            $this->set = Request_Route::$trigger[$this->set];

            if ($this->set != $this->method) {
                if ($this->set != 'AUTH' && $this->set != 'ERROR') {
                    $response = ['error', 'Please send the data in the method established by the implemented security'];
                }
            }

            $response = $this->action($this->set);

        } else {
            $response = ['error' => 'Selected action invalid'];
        }

        if (is_array($response)) {
            $result = json_encode($response);
            $response = ($_GET["callback"] . "({$result});");//Response data type JSON cross domain
        }

        return $response;
    }

    /**
     * @return bool|string|array
     */
    protected function action($set)
    {
        switch ($set) {

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
        $request = $this->setParam(Request_Route::$expectedRequest);

        if ($checkTK === 'access') {

            if ($request != 'access') {

                $response = Auth::getData(
                    $this->setVariables[Token::$expectToken],
                    $this->setVariables[Request_Route::$expectedRequest]
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

    protected function setVariable($data)
    {
        if (key_exists($this->set, $data)) {
            return $data[$this->set];
        }

        return ['error', 'Corrupt chronological time'];
    }
}