<?php

require_once DIR . '/auth/Auth.class.php';

class Manager extends Auth
{
    /**
     * Manager constructor.
     */
    function __construct()
    {

    }
    
    public function output($response)
    {
        $result = json_encode($response);
        return ("({$result});");//Response data type JSON cross domain
    }

    /**
     * @return bool|string|array
     */
    protected function action($method, $data)
    {
        switch ($method) {

            case 'GET':
                return $this->request($data['tk'], $data['request']);
            case 'POST':
                return $this->insert($data['tk'], $data['request']);
            case 'PUT':
                return $this->update($data['tk'], $data['request']);
            case 'DELETE':
                return $this->delete($data['tk'], $data['request']);
            case 'AUTH':
                return $this->auth($data['fbId'], $data['name']);
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
    private function request($tk, $request)
    {
        $checkTK = Auth::check($tk);

        if ($checkTK === 'access') {

            if ($request != 'access') {
                return Auth::getData($tk, $request);
            }

            return 'access to web services';
        }

        return ['error' => $checkTK];
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
    private function auth($id, $name)
    {
        $result = Auth::signIn([
            'access' => 0,
            'id' => $id,
            'name' => $name
        ]);

        return $result;
    }
}