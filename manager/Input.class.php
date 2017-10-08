<?php

/**
 * Class Input
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Input extends Access{
    /**
     * INPUT constructor.
     */
    public function __construct()
    {
        $model = Model::getInstance();
        $model->getClientServerInstance();
    }

    /**
     * Route action to execute set to params
     * 
     * @return array|bool|string
     */
    public function request()
    {
        try {
            $model = Model::getInstance();
            $clientInfoMD = $model->getClientServerInstance();

            switch ($clientInfoMD->getMethod()) {

                case GlobalSystem::ExpMethodGet:
                    return $this->in($_GET);
                case GlobalSystem::ExpMethodPost:
                    return $this->in($_POST);
                case GlobalSystem::ExpMethodPut:
                    return $this->in($_REQUEST);
                case GlobalSystem::ExpMethodDelete:
                    return $this->in($_REQUEST);
                default:
                    return; //['error' => 'Action selected no valid or implemented'];
            }

        } catch (GeneralException $e) {

            $model = Model::getInstance();
            $routeMD = $model->getRouteInstance();
            $routeMD->setRoute(Expected::ExpRouteError);
            $routeMD->setRequest();

            return false;
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

       return $this->checkInput($contReq, $parameters, $values);
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
        $model = Model::getInstance();
        $headerMD = $model->getClientServerInstance();
  
        if ($headerMD->getHeader(Expected::ExpHeaderAuth)) {
            return $this->checkInputMerchant($countParams, $parameter, $value);
        }

        return $this->checkInputSystem($countParams, $parameter, $value);
    }
}