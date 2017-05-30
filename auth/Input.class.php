<?php

require_once DIR . '/auth/Manager.class.php';
require_once DIR . '/auth/RequestRoute.class.php';
require_once DIR . '/staticFiles/Views.class.php';

class Input extends Manager
{
    private $ip;
    private $client;
    private $device;
    private $method;

    /**
     * INPUT constructor.
     */
    function __construct()
    {
        $this->method = $this->validateData($_SERVER['REQUEST_METHOD'], 'char');
        $this->client = $this->validateData($_SERVER['HTTP_HOST'], 'varchar');
        $this->device = $this->validateData($_SERVER['HTTP_USER_AGENT'], 'varchar');

        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {

            $this->ip = $this->validateData($_SERVER['HTTP_CLIENT_IP'], 'ip');
        } else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {

            $this->ip = $this->validateData($_SERVER['HTTP_X_FORWARDED_FOR'], 'ip');
        } else {

            $this->ip = $this->validateData($_SERVER['REMOTE_ADDR'], 'ip');
        }
    }

    /**
     * Route action to execute set to params
     *
     * @return array|bool|string
     */
    public function request()
    {
        switch ($this->method) {

            case 'GET' || 'get':
                return $this->in($_GET);
            case 'POST' || 'POST':
                return $this->in($_POST);
            case 'PUT' || 'put':
                return $this->in($_PUT);
            case 'DELETE' || 'delete':
                return $this->in($_DELETE);
            default:
                return ['error' => 'Action selected no valid'];
        }
    }

    /**
     * In request and generate sets to check variables
     *
     * @param $request
     * @return array|bool|string
     */
    private function in($request)
    {
        $contReq = count($request);
        $method = array_keys($request);
        $parameter = array_values($request);

        $out = $this->checkInput($contReq, $method, $parameter);

        return $out;
    }

    /**
     * Check input to request and generate sets variable for found to system
     *
     * @param $contReq
     * @param $method
     * @param $parameter
     * @return array|bool|string
     */
    private function checkInput($contReq, $method, $parameter)
    {
        if ($contReq > 0) {

            /**
             * generate variables to found system
             *
             * Set Request
             *  $Request
             *  $tk
             *  = $response request
             *
             * Set Auth
             *  $fbId
             *  $email
             *  $name
             *  $birthday
             *  = $response token
             */
            for ($i = 0; $i < $contReq; $i++) {
                ${$method[$i]} = $parameter[$i];
            }

            //Check if set request variables
            if (!empty($request) AND !empty($tk)) {

                $req['tk'] = $this->validateData($tk, 'varchar');
                $req['request'] = $this->validateData($request, 'request');

                return $this->validate($req);

            } else if (!empty($fbId) AND !empty($email) AND !empty($name) AND !empty($birthday)) {

                //Check if set auth variables
                $auth ['fbId'] = $this->validateData($fbId, 'numeric');
                $auth ['email'] = $this->validateData($email, 'email');
                $auth ['name'] = $this->validateData($name, 'char');
                $auth ['birthday'] = $this->validateData($birthday, 'date');

                $this->method = 'AUTH';

                return $this->validate($auth);
            }

            return 'Error to set request or auth variables';
        }

        return Views::REST_HOME;
    }
    
    /**
     * Validate data to data into request array and is certificated if is right format
     *
     * @param $data
     * @param $format
     * @return bool|mixed
     * @returner array to request but a value not is valid replace this with false (no certificate)
     */
    private static function validateData($data, $format)
    {
        switch ($format) {
            case 'varchar' :
                return filter_var($data, FILTER_SANITIZE_STRIPPED);
            case 'request' :
                if (property_exists('Request_Route', $data)) {
                    return filter_var($data, FILTER_SANITIZE_STRIPPED);
                }
                return false;
            case 'numeric' :
                if (is_numeric($data)) {
                    return filter_var($data, FILTER_SANITIZE_NUMBER_INT);
                }
                return false;
            case 'char' :
                if (preg_match('/[0-9]/', $data)) {
                    return false;
                }
                return filter_var($data, FILTER_SANITIZE_SPECIAL_CHARS);
            case 'email' :
                return filter_var($data, FILTER_VALIDATE_EMAIL);
            case 'date' :
                $date = explode('-', $data);
                if (checkdate($date[2], $date[1], $date[0])) {
                    $birthday = strtotime($data);
                    if ($birthday) {
                        return date('Y-m-d', $birthday);
                    }
                }
                return false;
            case 'int' :
                if (is_int($data)) {
                    return filter_var($data, FILTER_VALIDATE_INT);
                }
                return false;
            case 'bool' :
                return filter_var($data, FILTER_VALIDATE_BOOLEAN);
            case 'float' :
                return filter_var($data, FILTER_VALIDATE_FLOAT);
            case 'url' :
                return filter_var($data, FILTER_VALIDATE_URL);
            case 'ip' :
                return filter_var($data, FILTER_VALIDATE_IP);
        }

        return 'Invalid format';
    }

    /**
     * Validate data in request array
     *
     * @param $data
     * @return array|bool|string
     */
    private function validate($data)
    {
        $req = array();
        //Validate if value to key in data is false or no valid and return
        foreach ($data as $key => $value) {
            if ($value == false) {
                $req[$key] = "Invalid value in {$key} key to this request";
            }
        }
        // If request array is set return error list in this request
        if (count($req) > 0) {
            return ['error' => $req];
        }

        $managerAction = Manager::action($this->method, $data);

        return $managerAction;
    }
}