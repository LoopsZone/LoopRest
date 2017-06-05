<?php

require_once DIR . '/auth/Access.class.php';
require_once DIR . '/auth/Token.class.php';
require_once DIR . '/auth/WhiteList.class.php';

class Auth extends Access
{
    protected $set;
    protected $setVariables;

    protected static function getData($token, $request)
    {
        $user = Token::getData($token);
        return $user;//$this->auth->search($request.'/'.$user->id,TRUE);
    }
    
    protected static function signIn($data)
    {
        return Token::signIn($data);
    }

    protected function check()
    {
        $token = $this->setParam(Token::$expectToken);
        return Token::check($token);
    }

    protected function setParam($expect)
    {
        if (key_exists($expect, $this->setVariables)) {
            return $this->setVariables[$expect];
        }

        $this->set = 'ERROR';
        return ['error' => "Failed to set expected parameter {$expect} of {$this->set} variable set"];
    }
    
    private function checkClient()
    {

    }

    private function checkAllowIp()
    {

    }

    private function checkAllowCountry()
    {

    }

    private function checkAllowClient()
    {

    }

    private function giveAccess()
    {

    }
    
    private function getCountryByIp()
    {

    }

    private function watchClient()
    {

    }

    private function banClient()
    {

    }

    private function washClient()
    {

    }
}