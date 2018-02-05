<?php

require_once 'config/GlobalConstants.class.php';

/**
 * Class globalSystem
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class GlobalSystem extends GlobalConstants
{
	public static $ignoreDirectories;
	
	/**
	 * Returns the regex string of the ignored directories
	 *
	 * @return string
	 */
	public static function ignoreDirectories ()
	{
		$folders = self::$directoriesToIgnore;
		
		$ignoreDirectories = '';
		
		foreach($folders as $ignore) {
			$ignoreDirectories .= '|' . $ignore;
		}
		
		return $ignoreDirectories;
	}
	
	/**
	 * If an exception is activated, an error path is activated in the system
	 *
	 * @param $error
	 */
	public static function onErrorRoute($error)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		
		$routeMD->setRoute(GlobalSystem::ExpRouteError);
		$route = $routeMD->getRoute();
		
		$request[$route][GlobalSystem::ExpErrorDoc] = $error->getFile();
		$request[$route][GlobalSystem::ExpErrorLine] = $error->getLine();
		$request[$route][GlobalSystem::ExpErrorCode] = $error->getCode();
		$request[$route][GlobalSystem::ExpErrorDesc] = $error->getMessage();
		
		$routeMD->setRequest($request);
	}
	
	/**
	 * Validate data to data into request array and is certificated if is right format
	 *
	 * @param $data
	 * @param $format
	 * @return bool|mixed|string
	 */
	public static function validateData ($data, $format)
	{
		switch($format) {
			case self::ExpFormatVarchar :
				return filter_var($data, FILTER_SANITIZE_STRIPPED);
			case self::ExpFormatRequest :
				if(property_exists('RequestRoute', $data)) {
					return filter_var($data, FILTER_SANITIZE_STRIPPED);
				}
				return false;
			case self::ExpFormatNumeric :
				if(is_numeric($data)) {
					return filter_var($data, FILTER_SANITIZE_NUMBER_INT);
				}
				return false;
			case self::ExpFormatChar :
				if(preg_match('/[0-9]/', $data)) {
					return false;
				}
				return filter_var($data, FILTER_SANITIZE_SPECIAL_CHARS);
			case self::ExpFormatEmail :
				return filter_var($data, FILTER_VALIDATE_EMAIL);
			case self::ExpFormatDate :
				$date = explode('-', $data);
				if(checkdate($date[2], $date[1], $date[0])) {
					$birthday = strtotime($data);
					if($birthday) {
						return date('Y-m-d', $birthday);
					}
				}
				return false;
			case self::ExpFormatInt :
				if(is_int($data)) {
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
			case self::ExpFormatDomain :
				return true;
			case  self::ExpFormatMethods :
				return self::availableMethod($data);
		}
		
		return false;
	}
	
	public static function availableMethod ($data)
	{
		foreach(self::ExpAvailableMethods as $availableMethod) {
			if($availableMethod == $data) {
				return true;
			}
		}
		
		return false;
	}
}

GlobalSystem::$ignoreDirectories = GlobalSystem::ignoreDirectories();