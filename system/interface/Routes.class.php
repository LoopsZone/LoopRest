<?php

class Routes
{
	public function route($routeId = null)
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

	public function postRoute($name)
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