<?php

//require_once DIR . '/auth/Manager.class.php';
//require_once DIR . '/auth/RequestRoute.class.php';
//require_once DIR . '/staticFiles/Views.class.php';

class Input extends Manager
{
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
     * Validate data to data into request array and is certificated if is right format
     *
     * @param $data
     * @param $format
     * @return bool|mixed|string
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
     * Route action to execute set to params
     *
     * @return array|bool|string
     */
    public function request()
    {
        switch ($this->method) {

            case 'GET':
                return $this->in($_GET);
            case 'POST':
                return $this->in($_POST);
            case 'PUT':
                return $this->in($_PUT);
            case 'DELETE':
                return $this->in($_DELETE);
            default:
                return ['error' => 'Action selected no valid or implemented'];
        }
    }

    /**
     * In request and generate sets to check variables
     *
     * @param $request
     * @return array|bool|string
     */
    private function in($method)
    {
        $contReq = count($method);
        $parameters = array_keys($method);
        $values = array_values($method);

        $out = $this->checkInput($contReq, $parameters, $values);

        return $out;
    }

    /**
     * Check input to request and generate sets variable for found to system
     *
     * @param $contReq
     * @param $parameter
     * @param $value
     * @return array
     */
    private function checkInput($countParams, $parameter, $value)
    {
        if ($countParams > 0) {

            $result = array();
            // Generate set to variables that need request
            foreach (Request_Route::$routes as $set => $route) {
                foreach ($route as $param => $format) {
                    for ($i = 0; $i < $countParams; $i++) {
                        if ($param == $parameter[$i]) {
                            $result[$set][$param] = $this->validateData($value[$i], $format);
                        }
                    }
                }
            }
            // Check if new set is equal to expected set
            $route = key($result);
            if (count($result[$route]) > $countParams) {
                return [
                    'error' => [
                        'description' => 'Error to set params'
                    ]
                ];
            }

            return $this->validate($result);
        }

        return ['view' => 'home'];
    }

    /**
     * Validate data in request array
     *
     * @param $data
     * @return array
     */
    private function validate($data)
    {
        $error = array();
        //Validate if value to key in data is false or no valid and return
        foreach ($data as $key => $value) {

            if (is_array($value)) {

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

            if (key($error) == 'error') {
                $error = $error['error'];
            }
            
            return ['error' => $error];
        }

        return $data;
    }
}