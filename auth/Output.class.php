<?php

require_once DIR . '/auth/RequestRoute.class.php';

class Output extends Request_Route
{

    public static function checkRoute($request)
    {
        $route = key($request);

        if (key_exists($route, Request_Route::$trigger)) {
            return $route;
        }

        return 'invalid route';
    }

    public static function executeAction($route, $method)
    {
        //If this data have a trigger, change next action execute
        if (key_exists($route, Request_Route::$trigger)) {

            $route = Request_Route::$trigger[$route];

            if ($route != $method) {
                if ($route != 'AUTH' && $route != 'ERROR' && $route != 'VIEWS') {

                    return 'ERROR';//'Please send the data in the method established by the implemented security'
                }
            }

            return $route;

        } else {
            return 'ERROR';//'Selected action invalid'
        }
    }
}