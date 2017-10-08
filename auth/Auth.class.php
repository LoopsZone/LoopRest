<?php

/**
 * Class Auth
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Auth extends AccessDB{
    protected static function getData($token, $request)
    {
        $user = Token::getData($token);
        return $user;//$this->auth->search($request.'/'.$user->id,TRUE);
    }

    protected static function signIn($data)
    {
        return Token::signIn($data);
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