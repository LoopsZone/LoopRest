<?php

/**
 * Class Access
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Access extends Manager{
    /**
     * Check current route, validate and verify data to setting request type system
     * This method routing to new action in principal system if exist valid request and type
     * Or return principal view to home system configured
     *
     * @param $countParams
     * @param $parameter
     * @param $value
     * @return bool
     */
    protected function checkInputSystem($countParams, $parameter, $value)
    {
        $model = Model::getInstance();
        $routeMD = $model->getRouteInstance();

        if ($countParams > 0) {

            $found = false;
            $request = null;
            $routeName = null;

            // Generate set to variables that need request
            foreach (RequestRoute::$routes as $set => $route) {
                foreach ($route[GlobalSystem::ExpRouteKeyParams] as $param => $format) {
                    for ($i = 0; $i < $countParams; $i++) {
                        if ($param == $parameter[$i]) {
                            $routeName = $set;
                            $request[$set][$param] = self::validateData($value[$i], $format);
                        }
                    }

                    if (count($request) == $countParams) {
                        $found = true;
                        break;
                    }
                }

                if ($found) {
                    break;
                }
            }

            if (!$found) {
                
            }

            $routeMD->setRoute($routeName);
            $routeMD->setRequest($request);

            return true;
        }

        $routeMD->setRoute(Expected::ExpRouteView);

        return false;
    }

    protected function checkInputMerchant($countParams, $parameter, $value)
    {
        if ($countParams > 0) {
            return 'Merchant Access';
        }

        return ['views' => 'home'];
    }

    /**
     * Validate data to data into request array and is certificated if is right format
     *
     * @param $data
     * @param $format
     * @return bool|mixed|string
     */
    private static function validateData($data, $format)
    {
        return GlobalSystem::validateData($data, $format);
    }

    protected function checkAuth()
    {
        $model = Model::getInstance();
        $routeMD = $model->getRouteInstance();
        $token = $routeMD->getRequest(Token::ExpRequestToken);

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