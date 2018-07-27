<?php

class Routes
{
  /**
   * @param null $routeId
   * @return bool|mixed
   * @throws Exception
   */
	public function route($routeId = null)
	{
	  Input::validate($routeId, GlobalSystem::ExpFormatChar);
		$route = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);

		if($routeId){
			if(key_exists($routeId, $route)){
				return $route[$routeId];
			}

			return false;
		}

		return $route;
	}

	public function postRoute($name = null)
	{
    $route = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);

    if(!key_exists($name, $route)){
      if(!$route){
        $route = [];
      }
    }

    return Cache::loadDocument(CoreConfig::CACHE_TRANSLATE_ROUTES, $route, false);
	}
}