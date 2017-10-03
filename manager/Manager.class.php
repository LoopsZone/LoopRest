<?php

/**
 * Class Manager
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Manager extends Auth
{
    /**
     * Model
     * get a singleton instance of ClientServer_MD
     *
     * @return ClientServer_MD
     */
    protected function getClientServerInstance()
    {
        return ClientServer_MD::getInstance();
    }

    /**
     * Model
     * get a singleton instance of Route_MD
     *
     * @return Route_MD
     */
    protected function getRouteInstance()
    {
        return Route_MD::getInstance();
    }

    /**
     * Format response to response
     *
     * @param $request
     * @return array|bool|string
     */
    public function response()
    {
        $route = $this->getRouteInstance();

        $route->checkRoute();
        $response = $this->action();

        if (is_array($response) || is_object($response)) {
            $result = json_encode($response);
            $response = ($_GET["callback"] . "({$result});");//Response data type JSON cross domain
        }

        echo $response;
    }

    /**
     * @param $route
     * @return array
     */
    protected function action()
    {
        $route = $this->getRouteInstance();

        try {

            switch ($route->getTrigger()) {

                case 'GET':
                    return $this->request();
                case 'POST':
                    return $this->insert();
                case 'PUT':
                    return $this->update();
                case 'DELETE':
                    return $this->delete();
                case 'AUTH':
                    return $this->auth();
                case 'ERROR':
                    return $this->error();
                case 'VIEWS':
                    return $this->views();
                default:
                    return ['error' => 'Action selected no valid'];
            }

        } catch (GeneralException $e) {

            $route = $this->getRouteInstance();

            $route->setRoute(Expected::ExpRouteError);
            $route->setRequest();

            return false;
        }
    }

    /**
     * @param $tk
     * @param $request
     *
     * @return string|array
     */
    private function request()
    {
        $checkTK = Auth::check();

        if ($checkTK === 'access') {

            $request[Token::ExpRequestToken] = $this->getProperty(Token::ExpRequestToken);
            $request[RequestRoute::ExpRequestRequest] = $this->getProperty(RequestRoute::ExpRequestRequest);
            $this->validate($request);

            $trigger = $this->getProperty(GlobalSystem::ExpRouteKeyTrigger);

            if (!$trigger) {

                if ($request[RequestRoute::ExpRequestRequest] == 'access') {

                    return 'access to web services';

                } else {

                    return Auth::getData(
                        $request[Token::ExpRequestToken],
                        $request[RequestRoute::ExpRequestRequest]
                    );
                }
            }

            return $this->validateTrigger();
        }

        return ['error' => $checkTK];
    }

    private function insert()
    {

    }

    private function update()
    {

    }

    private function delete()
    {

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
    private function auth()
    {
        $auth = $this->getProperty(Expected::ExpRequestRequest);

        return Auth::signIn([
            'access' => 0,
            'id' => $auth[RequestRoute::ExpAuthId],
            'name' => $auth[RequestRoute::ExpAuthName]
        ]);
    }

    private function error()
    {

    }

    private function views()
    {
        $request = $this->getRouteInstance();
        $view = new Views($request->getRequest(Expected::ExpViews));
        return $view->routingView();
    }
}