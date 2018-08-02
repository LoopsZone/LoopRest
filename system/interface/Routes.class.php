<?php

class Routes
{
  /**
   * @param bool|null $routeId
   * @return bool|mixed
   */
	public function route(bool $routeId = null)
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
   * @param null $name
   * @return bool
   * @throws Exception
   */
	public function postRoute($name = null)
	{
    Input::validate($routeId, GlobalSystem::ExpFormatChar);
    $route = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);

    if(!key_exists($name, $route)){
      if(!$route){
        $route = [];
      }
    }

    return Cache::loadDocument(CoreConfig::CACHE_TRANSLATE_ROUTES, $route, false);
	}
}