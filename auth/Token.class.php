<?php
require_once DIR . '/vendor/autoload.php';

use Firebase\JWT\JWT;

class Token
{

    private static $secret_key = 'Sdw1s9x8@adjnA@#Sjs#dAsdg*$*S&D&nja';
    private static $encrypt = ['HS256'];
    private static $aud = null;
    Protected $auth;

    public static function signIn($data)
    {
        $time = time();

        $token = array('exp' => $time + (60 * 60), 'aud' => self::Aud(), 'data' => $data);

        return JWT::encode($token, self::$secret_key);
    }

    private static function aud()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {

            $aud = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {

            $aud = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {

            $aud = $_SERVER['REMOTE_ADDR'];
        }
        $aud .= @$_SERVER['HTTP_USER_AGENT'];
        $aud .= gethostname();

        return sha1($aud);
    }

    public static function check($token)
    {

        try {

            $decode = JWT::decode($token, self::$secret_key, self::$encrypt);

            if ($decode->aud !== self::aud()) {
                throw new Exception('Invalid user logged in.');
            }

            if (empty($token)) {
                throw new Exception('Invalid token supplied.');
            }

            return 'access';

        } catch (\Firebase\JWT\ExpiredException $e) {
            return 'expired Token';
        } catch (\Firebase\JWT\SignatureInvalidException $e) {
            return 'Corrupted sign';
        } catch (\Exception $e) {
            return 'error';
        }
    }

    public static function getData($token)
    {
        return JWT::decode($token, self::$secret_key, self::$encrypt)->data;
    }
}