<?php

/**
 * Class Auth
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Auth
{
    /**
     * Check if token is valid for the system
     *
     * @return string
     */
    protected static function checkClient ()
    {
        $routeMD = Model::routeInstance();
        $clientServerMD = Model::clientServerInstance();

        //TODO Add BlackList customers

        if(self::routeNeedTK()) {
            $token = $clientServerMD->getHeader(GlobalSystem::ExpHeaderAuth);
            $availableTK = Token::check($token);

            if($availableTK === true) {
                $userData = Token::getData($token);
                $email = Encrypt::passwordDecode($userData[GlobalSystem::ExpEmailTK]);

                $routeMD->setUserLogin($email);
            }

            return $availableTK;
        }

        return true;
    }

    /**
     * Check and return access in system for user
     *
     * @param $user
     * @return int
     */
    protected function checkUserAccess ($user)
    {
        $users = array_values(CoreConfig::$rootUsers);
        return (!in_array($user, $users)) ? 0 : 1;
    }

    /**
     * Check if route need token
     *
     * @param $route
     * @return bool
     */
    private static function routeNeedTK ()
    {
        $routeMD = Model::routeInstance();

        $route = $routeMD->getRoute();
        if(!GlobalSystem::TranslatedRequestRoutes[$route][GlobalSystem::ExpTranslatePublicRoute]) {
            $route = GlobalSystem::routeType();
            if(key_exists($route, RequestRoute::$routes)) {
                $routeExecuting = RequestRoute::$routes[$route];
                return $routeExecuting[GlobalSystem::ExpRouteNeedTK];
            }
        }

        return false;
    }

    /**
     * Give user access system level
     */
    protected function giveAccess ()
    {
        $routeMD = Model::routeInstance();
        $clientServerMD = Model::clientServerInstance();
        $authHeader = $clientServerMD->getHeader(GlobalSystem::ExpHeaderAuth);
        $auth = (!$authHeader) ? 0 : 1;/*Zero value get user access to principal system and one value get structure merchant access*/

        $routeMD->setAuthorization($auth);
    }
}