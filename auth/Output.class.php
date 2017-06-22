<?php

class Output extends RequestRoute
{

    public static function checkRoute($request)
    {
        $route = key($request);

        if (key_exists($route, RequestRoute::$trigger)) {
            return $route;
        }

        return 'invalid route';
    }

    public static function executeAction($route, $method)
    {
        //If this data have a trigger, change next action execute
        if (key_exists($route, RequestRoute::$trigger)) {

            $route = RequestRoute::$trigger[$route];

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