<?php

/**
 * Class Manager
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Manager extends Auth{
    /**
     * Format response to response
     *
     * @param $request
     * @return array|bool|string
     */
    public function response()
    {
        $model = Model::getInstance();
        $routeMD = $model->getRouteInstance();

        $routeMD->checkRoute();
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
        $model = Model::getInstance();
        $routeMD = $model->getRouteInstance();

        try {

            switch ($routeMD->getTrigger()) {

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

            $routeMD->setRoute(Expected::ExpRouteError);
            $routeMD->setRequest();

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
        $model = Model::getInstance();
        $requestMD = $model->getRouteInstance();
        $view = new Views($requestMD->getRequest(Expected::ExpViews));
        return $view->routingView();
    }
}