<?php

require_once DIRECTORY . 'system/config/GlobalConstants.class.php';

/**
 * Class globalSystem
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class GlobalSystem extends GlobalConstants
{
    public static $expFormatRoutes;
    public static $expFormatClients;
    public static $expFormatDevices;
    public static $expFormatMethods;
    public static $expFormatHeaders;
    public static $expFormatTriggers;
    public static $expFormatVariable;
    
    public static $ignoreDirectories;

    /**
     * Returns the regex string of the ignored directories
     *
     * @return string
     */
    public static function ignoreDirectories()
    {
        $folders = self::$directoriesToIgnore;

        $ignoreDirectories = '';

        foreach ($folders as $ignore) {
            $ignoreDirectories .= '|' . $ignore;
        }

        return $ignoreDirectories;
    }

    /**
     * Validate data to data into request array and is certificated if is right format
     *
     * @param $data
     * @param $format
     * @return bool|mixed|string
     */
    public static function validateData($data, $format)
    {
        switch ($format) {
            case self::ExpFormatVarchar :
                return filter_var($data, FILTER_SANITIZE_STRIPPED);
            case self::ExpFormatRequest :
                if (property_exists('RequestRoute', $data)) {
                    return filter_var($data, FILTER_SANITIZE_STRIPPED);
                }
                return false;
            case self::ExpFormatNumeric :
                if (is_numeric($data)) {
                    return filter_var($data, FILTER_SANITIZE_NUMBER_INT);
                }
                return false;
            case self::ExpFormatChar :
                if (preg_match('/[0-9]/', $data)) {
                    return false;
                }
                return filter_var($data, FILTER_SANITIZE_SPECIAL_CHARS);
            case self::ExpFormatEmail :
                return filter_var($data, FILTER_VALIDATE_EMAIL);
            case self::ExpFormatDate :
                $date = explode('-', $data);
                if (checkdate($date[2], $date[1], $date[0])) {
                    $birthday = strtotime($data);
                    if ($birthday) {
                        return date('Y-m-d', $birthday);
                    }
                }
                return false;
            case self::ExpFormatInt :
                if (is_int($data)) {
                    return filter_var($data, FILTER_VALIDATE_INT);
                }
                return false;
            case self::ExpFormatBool :
                return filter_var($data, FILTER_VALIDATE_BOOLEAN);
            case self::ExpFormatFloat :
                return filter_var($data, FILTER_VALIDATE_FLOAT);
            case self::ExpFormatUrl :
                return filter_var($data, FILTER_VALIDATE_URL);
            case self::ExpFormatIp :
                return filter_var($data, FILTER_VALIDATE_IP);
        }

        return false;
    }
}

globalSystem::$ignoreDirectories = globalSystem::ignoreDirectories();