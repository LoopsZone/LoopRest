<?php

class Encrypt
{

    const METHOD_BASE64 = 1;
    const METHOD_MYSQL_AES = 2;

    //only numeric data is supported
    const METHOD_BASE36 = 3;

    const CODE_PASSWORD = 1;

    const CODE_NUMERIC = 2;

    /**
     * encode a string
     *
     * @param string $data
     * @param string $method
     * @param string $key
     *
     * @return string
     */
    public static function encode($data, $method = 1, $key = null)
    {
        switch ($method) {
            case Encrypt::METHOD_BASE64 :
                return base64_encode($data);
                break;

            case Encrypt::METHOD_MYSQL_AES :
                return Encrypt::aesEncrypt($data, $key);
                break;

            case Encrypt::METHOD_BASE36 :
                //only numeric data is supported
                return strtoupper(base_convert($data, 10, 36));
                break;
        }

        return $data;
    }

    /**
     * mysql AES encrypt method
     *
     * @param string $val
     * @param string $ky
     */
    public static function aesEncrypt($val, $ky)
    {
        $key = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
        for ($a = 0; $a < strlen($ky); $a++) {
            $key [$a % 16] = chr(ord($key [$a % 16]) ^ ord($ky [$a]));
        }
        $mode = MCRYPT_MODE_ECB;
        $enc = MCRYPT_RIJNDAEL_128;
        $val = str_pad($val, (16 * (floor(strlen($val) / 16) + (strlen($val) % 16 == 0 ? 2 : 1))), chr(16 - (strlen($val) % 16)));
        return mcrypt_encrypt($enc, $key, $val, $mode, mcrypt_create_iv(mcrypt_get_iv_size($enc, $mode), MCRYPT_DEV_URANDOM));
    }

    /**
     * decode a string
     *
     * @param string $data
     * @param string $method
     * @param string $key
     *
     * @return string
     */
    public static function decode($data, $method = 1, $key = null)
    {
        switch ($method) {
            case Encrypt::METHOD_BASE64 :
                return base64_decode($data);
                break;

            case Encrypt::METHOD_MYSQL_AES :
                return Encrypt::aesDecrypt($data, $key);
                break;

            case Encrypt::METHOD_BASE36 :
                //only numeric data is supported
                return base_convert($data, 36, 10);
                break;
        }

        return $data;
    }

    /**
     * mysql AES decrypt method
     *
     * @param string $val
     * @param string $ky
     */
    public static function aesDecrypt($val, $ky)
    {
        $key = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
        for ($a = 0; $a < strlen($ky); $a++) {
            $key [$a % 16] = chr(ord($key [$a % 16]) ^ ord($ky [$a]));
        }
        $mode = MCRYPT_MODE_ECB;
        $enc = MCRYPT_RIJNDAEL_128;
        $dec = @mcrypt_decrypt($enc, $key, $val, $mode, @mcrypt_create_iv(@mcrypt_get_iv_size($enc, $mode), MCRYPT_DEV_URANDOM));
        return rtrim($dec, ((ord(substr($dec, strlen($dec) - 1, 1)) >= 0 and ord(substr($dec, strlen($dec) - 1, 1)) <= 16) ? chr(ord(substr($dec, strlen($dec) - 1, 1))) : null));
    }

    /**
     * generate a new unique string key
     *
     * @return string
     */
    public static function genKey()
    {
        //creates a unique ID with a random number as a prefix - more secure than a static prefix 
        $c = uniqid(rand(), true);

        //this md5 encrypts the username from above, so its ready to be stored in your database
        $md5c = md5($c);
        return $md5c;
    }

    /**
     * Generate random codes
     *
     * @param string $codeType
     * @param int $length
     *
     * @return string
     */
    public static function generateCode($codeType, $length)
    {
        $result = '';
        $str = '';

        if ($codeType == Encrypt::CODE_PASSWORD) {
            $str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
        } else if ($codeType == Encrypt::CODE_NUMERIC) {
            $str = "1234567890";
        }

        if (strlen($str) > 0) {
            for ($i = 0; $i < $length; $i++) {
                $result .= substr($str, rand(0, strlen($str) - 1), 1);
            }
        }

        return $result;
    }

    /**
     * Creates a random string according to parameter options
     *
     * @param int $length
     * @param boolean $upperCase
     * @param boolean $numeric
     * @param boolean $specialCharacters
     *
     * @return string
     */
    public static function generateString($length = 4, $upperCase = TRUE, $numeric = FALSE, $specialCharacters = FALSE)
    {
        $source = 'abcdefghijklmnopqrstuvwxyz';
        if ($upperCase == 1)
            $source .= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        if ($numeric == 1)
            $source .= '1234567890';
        if ($specialCharacters == 1)
            $source .= '|@#~$%()=^*+[]{}-_';
        if ($length > 0) {
            $rstr = "";
            $source = str_split($source, 1);
            for ($i = 1; $i <= $length; $i++) {
                mt_srand(( double )microtime() * 1000000);
                $num = mt_rand(1, count($source));
                $rstr .= $source [$num - 1];
            }
        }
        return $rstr;
    }

    /**
     * pack an object (serialize, gzcompress, base64_encode)
     *
     * @param object $data
     *
     * @return string
     */
    public static function pack($object)
    {
        $packed = base64_encode(gzcompress(serialize($object)));
        return $packed;
    }

    /**
     * unpack an object (base64_decode, gzuncompress, unserialize)
     *
     * @param string $packed
     *
     * @return object
     */
    public static function unpack($packed)
    {
        $data = unserialize(gzuncompress(base64_decode($packed)));
        return $data;
    }

    /**
     * Function that Applies a Triple DES Encription using a key.
     * @param string $key
     * @param string $text
     */
    public static function encryptTripleDES($key, $text)
    {
        $vector = "uL%&(#(f";

        $td = mcrypt_module_open(MCRYPT_3DES, '', MCRYPT_MODE_CBC, '');

        // Complete the key
        $key_add = 24 - strlen($key);
        $key .= substr($key, 0, $key_add);

        //Padding the text
        $text_add = strlen($text) % 8;
        for ($i = $text_add; $i < 8; $i++) {
            $text .= chr(8 - $text_add);
        }

        mcrypt_generic_init($td, $key, $vector);
        $encrypt64 = mcrypt_generic($td, $text);
        mcrypt_generic_deinit($td);
        mcrypt_module_close($td);

        // Return the encrypt text in 64 bits code
        return base64_encode($encrypt64);
    }

}

?>