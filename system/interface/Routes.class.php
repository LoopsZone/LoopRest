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

		if(is_array($route) && $routeId){
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
   * @param string|null $method
   * @param string|null $action
   * @return bool
   * @throws Exception
   */
	public function postRoute(string $name, string $method = null, string $action = null)
	{
    Input::validate($name, GlobalSystem::ExpFormatChar);

    $routes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);
		if(!is_array($routes) || !key_exists($name, $routes)){
			$route = [
				$name => [
					GlobalSystem::ExpTranslatePublicRoute => false,
					GlobalSystem::ExpTranslateParamsMethodWithRoutes => true,
					GlobalSystem::ExpTranslateRouteType => GlobalSystem::ExpRouteRequest
				]
			];

			if($routes){
				$routes = array_merge($routes, $route);
			}
		}

    if($method){
      Input::validate($method, GlobalSystem::ExpFormatChar);
      Input::validate($action, GlobalSystem::ExpFormatChar);

      if(!is_array($routes) || !key_exists($action, $routes[$name][GlobalSystem::ExpTranslateMethodsRoute][$method])){
        $model = Model::getInstance();
        $routeMD = $model->getRouteInstance;

        $body = $routeMD->getBody();
        if(strtoupper($action) == GlobalSystem::ExpMethodGet && $body){
          $errorMessage = "Method GET not need body input structure, please remove this";
          ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
        }

        $route = ($routes) ? $routes : $route;
        $route[$name][GlobalSystem::ExpTranslateMethodsRoute][$method][$action] = json_decode($body, true);
      }
    }

    return Cache::loadDocument(CoreConfig::CACHE_TRANSLATE_ROUTES, $route, false);
	}

  /**
   * Update current registry
   *
   * @param string $name
   * @param string|null $method
   * @return bool
   * @throws Exception
   */
	public function putRoute(string $name, string $method = null)
  {
    Input::validate($name, GlobalSystem::ExpFormatChar);

    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $routes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);

    if(key_exists($name, $routes)){
      $body = $routeMD->getBody();

      if($method){
        Input::validate($method, GlobalSystem::ExpFormatChar);
        if(key_exists($method, $routes[$name][GlobalSystem::ExpTranslateMethodsRoute])){
          GlobalSystem::validateFormatFieldsBodyActionMethod($body);
          $newBody = array_merge($routes[$name][GlobalSystem::ExpTranslateMethodsRoute], json_decode($body, true));
          $routes[$name][GlobalSystem::ExpTranslateMethodsRoute][$method][strtolower(GlobalSystem::ExpMethodPost)] = $newBody;
        }
      }else{
        $bodyFormat = [
          GlobalSystem::ExpTranslatePublicRoute => GlobalSystem::ExpFormatBool,
          GlobalSystem::ExpTranslateRouteType => GlobalSystem::ExpFormatChar,
          GlobalSystem::ExpTranslateParamsMethodWithRoutes => GlobalSystem::ExpFormatBool
        ];

        GlobalSystem::validateFormatFieldsBodyActionMethod($body, $bodyFormat);

        $body = json_decode($body, true);
        $publicRoute = $body[GlobalSystem::ExpTranslatePublicRoute];
        $translateRouteType = $body[GlobalSystem::ExpTranslateRouteType];
        $methodsWithRoutes = $body[GlobalSystem::ExpTranslateParamsMethodWithRoutes];

        $routes[$name][GlobalSystem::ExpTranslatePublicRoute] = ($publicRoute)
          ? $publicRoute : $routes[$name][GlobalSystem::ExpTranslatePublicRoute];
        unset($body[GlobalSystem::ExpTranslatePublicRoute]);

        $routes[$name][GlobalSystem::ExpTranslateRouteType] = ($translateRouteType)
          ? $translateRouteType : $routes[$name][GlobalSystem::ExpTranslateRouteType];
        unset($body[GlobalSystem::ExpTranslateRouteType]);

        $routes[$name][GlobalSystem::ExpTranslateParamsMethodWithRoutes] = ($methodsWithRoutes)
          ? $methodsWithRoutes : $routes[$name][GlobalSystem::ExpTranslateParamsMethodWithRoutes];
        unset($body[GlobalSystem::ExpTranslateParamsMethodWithRoutes]);
      }

      if($body){
        $errorMessage['structure'] = $bodyFormat;
        $errorMessage['message'] = "Body format input unavailable";
        ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
      }

      if(GlobalSystem::arrayDiff(Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES), $routes)){
        return Cache::loadDocument(CoreConfig::CACHE_TRANSLATE_ROUTES, $routes, false);
      }
    }

    return false;
  }
}