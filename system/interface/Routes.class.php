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
   * @param string|null $method
   * @param string|null $action
   * @return bool
   * @throws Exception
   */
	public function postRoute(string $name, string $method = null, string $action = null)
	{
    Input::validate($name, GlobalSystem::ExpFormatChar);

    $routes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);
    if(!key_exists($name, $routes)){
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

      if(!key_exists($action, $routes[$name][GlobalSystem::ExpTranslateMethodsRoute][$method])){
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
}