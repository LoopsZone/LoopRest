<?php

class Routes
{
  /**
   * Get routes or a specific route
   *
   * @param string|null $routeId
   * @return bool|mixed
   */
	public function route(string $routeId = null)
	{
		$route = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);

		if($routeId){
			if(key_exists($routeId, $route)){
				return $route[$routeId];
			}

			return false;
		}

		return $route;
	}

  /**
   * Generate new route
   *
   * @param string $name
   * @param string $type
   * @return bool
   * @throws Exception
   */
	public function postRoute(string $name, string $method = null)
	{
    Input::validate($name, GlobalSystem::ExpFormatChar);
    if(!in_array($type, GlobalSystem::RouteTypes)){
      $typesSTR = '';
      foreach(GlobalSystem::RouteTypes as $typeAccept){
        $typesSTR .= $typeAccept;
        $types = $typesSTR;
        $typesSTR = $typesSTR . ', ';
      }

      $model = Model::getInstance();
      $routeMD = $model->getRouteInstance;
      $error = "Invalid route type '{$type}', types of routes accepted: {$types}";
      $routeMD->setRequest([GlobalSystem::ExpRouteError => $error]);
      $errorCode = ErrorCodes::HttpParamsExc;
      $errorCode[GlobalSystem::ExpErrorDesc] = json_encode($error);

      ErrorManager::throwException($errorCode);
    }

    $route = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);
    if(!key_exists($name, $route)){
      if(!$route){
        $route = [
          $name => [
            GlobalSystem::ExpTranslateRouteType => $type,
            GlobalSystem::ExpTranslatePublicRoute => false,
            GlobalSystem::ExpTranslateParamsMethodWithRoutes => true
          ]
        ];
      }
    }

    return Cache::loadDocument(CoreConfig::CACHE_TRANSLATE_ROUTES, $route, false);
	}
}