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
				return is_bool($data);
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
   * Get current route configuration
   *
   * @param string|null $route
   * @return array|bool
   */
	public static function routeConfig(string $route = null)
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;

    $route = ($route) ? $route : $routeMD->getRoute();
    if(!key_exists($route, RequestRoute::$routes)){
      $translateRoutes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);
      $routes = ($translateRoutes) ? array_merge($translateRoutes, GlobalSystem::TranslatedRequestRoutes) : GlobalSystem::TranslatedRequestRoutes;

      if(key_exists($route, $routes)){
        return $routes[$route];
      }
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
      $routes = self::routeConfig();

      if($routes){
        return $routes[GlobalSystem::ExpTranslateRouteType];
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

  /**
   * Check the differences in two arrays recursively
   *
   * @param $aArray1
   * @param $aArray2
   * @return array
   */
  public static function arrayDiff($aArray1, $aArray2){
    $aReturn = [];

    foreach($aArray1 as $mKey => $mValue){
      if(array_key_exists($mKey, $aArray2)){
        if(is_array($mValue)){
          $aRecursiveDiff = GlobalSystem::arrayDiff($mValue, $aArray2[$mKey]);
          if(count($aRecursiveDiff)){
            $aReturn[$mKey] = $aRecursiveDiff;
          }
        }else{
          if($mValue != $aArray2[$mKey]){
            $aReturn[$mKey] = $mValue;
          }
        }
      }else{
        $aReturn[$mKey] = $mValue;
      }
    }

    return $aReturn;
  }

  /**
   * Validate the format of the body fields of the action method
   *
   * @param string $body
   * @param array $bodyFormat
   * @throws Exception
   */
  public static function validateFormatFieldsBodyActionMethod()
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $clientServerMD = $model->getClientServerInstance;

	  $body = $routeMD->getBody();
    $route = GlobalSystem::routeConfig();
    $currentRoute = $routeMD->getRoute();
    $newRoute = ($currentRoute == GlobalSystem::ExpTranslateRequestRoutesRoute);
	  $bodyFormat = $routes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);

	  if(key_exists($method, $routes[$name][GlobalSystem::ExpTranslateMethodsRoute])){
		  $newBody = array_merge($routes[$name][GlobalSystem::ExpTranslateMethodsRoute], json_decode($body, true));
		  $routes[$name][GlobalSystem::ExpTranslateMethodsRoute][$method][strtolower(GlobalSystem::ExpMethodPost)] = $newBody;
	  }

    if($route && !count($bodyFormat)){
    	if(key_exists(GlobalSystem::ExpFormatMethods, $route)){
		    $bodyFormat = @$route[GlobalSystem::ExpFormatMethods][$routeMD->getMethod()][strtolower($clientServerMD->getMethod())];
	    }
    }

    if(!$body && $bodyFormat){
      $errorMessage['message'] = 'Empty body structure, the action needs the following body format';
      $errorMessage['structure'] = $bodyFormat;

      ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
    }

    foreach($body as $field => $value){
      if(is_array($value)){
        $bodyFormat = ($bodyFormat) ? $bodyFormat[$field] : [];
        GlobalSystem::validateFormatFieldsBodyActionMethod(json_encode($body[$field]), $bodyFormat);
      }else{
        if($newRoute && !$bodyFormat){
          if($clientServerMD->getMethod() != GlobalSystem::ExpMethodPut){
            if(!in_array($value, GlobalSystem::BodyFieldsFormatAccepts)){
              $errorMessage = "Invalid format selected: '{$value}', expected a input format from system";
              ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
            }
          }
        }else{
          $result = GlobalSystem::validateData($value, $bodyFormat[$field]);

          if(!$result){
            $errorMessage = "Invalid value '{$value}', expected data type: {$bodyFormat[$field]}, required for this parameter";
            ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
          }
        }
      }
    }
  }
}