<?php

/**
 * Class Auth
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Auth extends Access
{
    protected function checkInputMerchant($countParams, $parameter, $value)
    {
        if ($countParams > 0) {
            return 'Merchant Access';
        }

        return ['views' => 'home'];
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