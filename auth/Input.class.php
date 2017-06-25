<?php

/**
 * Class Input
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Input extends Manager
{
    /**
     * INPUT constructor.
     */
    public function __construct()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {

            $this->setVariables[ExpectVariables::ExpSetVariableIp] = $_SERVER['HTTP_CLIENT_IP'];
        } else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {

            $this->setVariables[ExpectVariables::ExpSetVariableIp] = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {

            $this->setVariables[ExpectVariables::ExpSetVariableIp] = $_SERVER['REMOTE_ADDR'];
        }

        $this->setVariables[ExpectVariables::ExpSetVariableDevice] = $_SERVER['HTTP_USER_AGENT'];
        $this->setVariables[ExpectVariables::ExpSetVariableClient] = $_SERVER['HTTP_HOST'];
        $this->setVariables[ExpectVariables::ExpSetVariableMethod] = $_SERVER['REQUEST_METHOD'];
        $this->setVariables[ExpectVariables::ExpSetVariableHeaders] = headers_list();

        $this->setVariables($this->setVariables);
    }

    /**
     * Route action to execute set to params
     * 
     * @return array|bool|string
     */
    public function request()
    {
        try {

            $method = $this->getProperty(ExpectVariables::ExpSetVariableMethod);

            switch ($method) {

                case GlobalSystem::ExpMethodGet:
                    return $this->in($_GET);
                case GlobalSystem::ExpMethodPost:
                    return $this->in($_POST);
                case GlobalSystem::ExpMethodPut:
                    return $this->in($_PUT);
                case GlobalSystem::ExpMethodDelete:
                    return $this->in($_DELETE);
                default:
                    return ['error' => 'Action selected no valid or implemented'];
            }

        } catch (Exception $e) {

            return $e->getMessage();
        }
    }

    /**
     * In request and generate sets to check variables
     *
     * @param $method
     * @return array
     */
    private function in($method)
    {
        $contReq = count($method);
        $parameters = array_keys($method);
        $values = array_values($method);

        $this->checkInput($contReq, $parameters, $values);
    }

    /**
     * Check input to request and generate sets variable for found to system
     *
     * @param $countParams
     * @param $parameter
     * @param $value
     * @return array
     */
    private function checkInput($countParams, $parameter, $value)
    {
        foreach ($this->getProperty(GlobalSystem::ExpSetVariableHeaders) as $headerValue) {
            if (GlobalSystem::ExpHeaderFrom == $headerValue) {
                return $this->checkInputMerchant($countParams, $parameter, $value);
            }
        }

        return $this->checkInputSystem($countParams, $parameter, $value);
    }
}