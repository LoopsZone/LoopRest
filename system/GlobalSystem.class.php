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
	 * Validate data to data into request array and is certificated if is right format
	 *
	 * @param $data
	 * @param $format
	 * @return bool|mixed|string
	 */
	public static function validateData($data, $format)
	{
		switch($format){
      case self::ExpFormatString :
			case self::ExpFormatVarchar :
				return filter_var($data, FILTER_SANITIZE_STRIPPED);
			case self::ExpFormatRequest :
				if(property_exists('RequestRoute', $data)) {
					return filter_var($data, FILTER_SANITIZE_STRIPPED);
				}
				return false;
			case self::ExpFormatNumeric :
				if(is_numeric($data)){
					return filter_var($data, FILTER_SANITIZE_NUMBER_INT);
				}
				return false;
			case self::ExpFormatChar :
				if(preg_match('/[0-9]/', $data)){
					return false;
				}
				return filter_var($data, FILTER_SANITIZE_SPECIAL_CHARS);
			case self::ExpFormatEmail :
				return filter_var($data, FILTER_VALIDATE_EMAIL);
			case self::ExpFormatDate :
				$date = explode('-', $data);
				if(checkdate($date[2], $date[1], $date[0])){
					$birthday = strtotime($data);
					if($birthday){
						return date('Y-m-d', $birthday);
					}
				}
				return false;
			case self::ExpFormatInt :
				if(is_int($data)){
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
			case  self::ExpFormatRoutes :
				return self::getCurrentRoute($data);
      case self::ExpFormatRouteTypes :
        return self::routeTypes($data);
		}

		return false;
	}

	/**
	 * Check if method is available
	 *
	 * @param $data
	 * @return bool
	 */
	private static function availableMethod($data)
	{
		foreach(self::ExpAvailableMethods as $availableMethod){
			if($availableMethod == $data){
				return true;
			}
		}

		return false;
	}

  /**
   * Route type accept
   *
   * @param $data
   * @return bool
   */
  private static function routeTypes($data)
  {
    if(in_array($data, self::RouteTypes)){
      return $data;
    }

    return false;
  }

	/**
	 * Get current route
	 *
	 * @param $data
	 * @return array|bool|mixed
	 */
	public static function getCurrentRoute($data){
		if(strpos($data, '/') !== false){
			$finalRoutes = array();
			$routes = explode('/', $data);
			foreach($routes as $route => $routeName){
				if($routes[$route] !== '' && $routes[$route] !== null){
					array_push($finalRoutes, $routes[$route]);
				}
			}

			return $finalRoutes;
		}

		return false;
	}

  /**
   * Translate route request to system route
   *
   * @param $route
   * @return string
   */
  public static function translateSystemRoute()
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;

    $route = $routeMD->getRoute();
    if(!key_exists($route, RequestRoute::$routes)){
      $translateRoutes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);
      $routes = ($translateRoutes) ? array_merge($translateRoutes, GlobalSystem::TranslatedRequestRoutes) : GlobalSystem::TranslatedRequestRoutes;

      if(key_exists($route, $routes)){
        return $routes[$route][GlobalSystem::ExpTranslateRouteType];
      }

      return 'fake';
    }

    return $route;
  }

  /**
   * Translate the method to the route method with the corresponding action
   *
   * @return string
   */
  public static function translatedRouteMethod()
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $clientServerMD = $model->getClientServerInstance;
    $method = ($routeMD->getMethod()) ? $routeMD->getMethod() : false;

    $action = $clientServerMD->getMethod();
    if($action != GlobalSystem::ExpMethodGet){
      $method = strtolower($action) . ucfirst($method);
    }

    return $method;
  }
}