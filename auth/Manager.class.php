<?php

/**
 * Class Manager
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Manager extends Auth
{
    /**
     * Format response to output
     *
     * @param $request
     * @return array|bool|string
     */
    public function output()
    {
        $this->checkRoute();
        $response = $this->action();

        if (is_array($response) || is_object($response)) {
            $result = json_encode($response);
            $response = ($_GET["callback"] . "({$result});");//Response data type JSON cross domain
        }

        return $response;
    }

    /**
     * @param $route
     * @return array
     */
    protected function action()
    {
        try {

            $route = $this->getProperty(GlobalSystem::ExpSetVariableRoute);

            switch ($route) {

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

        } catch (Exception $e) {
            return $e->getMessage();
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

            $trigger = $this->getProperty(globalSystem::ExpRouteKeyTrigger);

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
}