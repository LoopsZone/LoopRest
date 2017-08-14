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

            $this->setProperties[ExpectVariables::ExpSetPropertiesIp] = $_SERVER['HTTP_CLIENT_IP'];
        } else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {

            $this->setProperties[ExpectVariables::ExpSetPropertiesIp] = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {

            $this->setProperties[ExpectVariables::ExpSetPropertiesIp] = $_SERVER['REMOTE_ADDR'];
        }

        $this->setProperties[ExpectVariables::ExpSetPropertiesDevice] = $_SERVER['HTTP_USER_AGENT'];
        $this->setProperties[ExpectVariables::ExpSetPropertiesDomain] = $_SERVER['HTTP_HOST'];
        $this->setProperties[ExpectVariables::ExpSetPropertiesMethod] = $_SERVER['REQUEST_METHOD'];
        $this->setProperties[ExpectVariables::ExpSetPropertiesHeaders] = headers_list();

        $this->setProperties($this->setProperties);
    }

    /**
     * Route action to execute set to params
     * 
     * @return array|bool|string
     */
    public function request()
    {
        try {

            switch ($this->getProperty(Expected::ExpSetPropertiesMethod)) {

                case GlobalSystem::ExpMethodGet:
                    return $this->in($_GET);
                case GlobalSystem::ExpMethodPost:
                    return $this->in($_POST);
                case GlobalSystem::ExpMethodPut:
                    return $this->in($_PUT);
                case GlobalSystem::ExpMethodDelete:
                    return $this->in($_DELETE);
                default:
                    return; //['error' => 'Action selected no valid or implemented'];
            }

        } catch (ExceptionGetProperties $e) {

            $this->setProperties($e->getMessageResponse());
            return $this->output();
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
        foreach ($this->getProperty(Expected::ExpSetPropertiesHeaders) as $header => $headerValue) {
            if (GlobalSystem::ExpHeaderFrom == $headerValue) {
                return $this->checkInputMerchant($countParams, $parameter, $value);
            }
        }

        return $this->checkInputSystem($countParams, $parameter, $value);
    }
}