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
   * @return bool
   * @throws Exception
   */
	public function postRoute(string $name, string $method = null)
	{
    Input::validate($name, GlobalSystem::ExpFormatChar);

    $routes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);
    if(!key_exists($name, $routes)){
      $route = [
        $name => [
          GlobalSystem::ExpTranslateMethodsRoute => [],
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
      if(!key_exists($method, $routes[$name][GlobalSystem::ExpTranslateMethodsRoute])){
        $model = Model::getInstance();
        $routeMD = $model->getRouteInstance;
        $body = $routeMD->getBody();

        $method = [
          GlobalSystem::ExpTranslateMethodsRoute => [
            $method => [
              GlobalSystem::ExpTranslateBodyRequest => json_decode($body, true)
            ]
          ]
        ];

        $route = ($routes) ? $routes : $route;
        $route = array_merge($route, [$name => $method]);
      }
    }

    return ($routes) ? false : Cache::loadDocument(CoreConfig::CACHE_TRANSLATE_ROUTES, $route, false);
	}
}