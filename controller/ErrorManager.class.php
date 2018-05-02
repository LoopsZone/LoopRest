<?php

class ErrorManager
{
	/**
	 * If an exception is activated, an error path is activated in the system
	 *
	 * @param $error
	 */
	public static function onErrorRoute($error = false, $routeResponse = false)
	{
		if(!Response::getReadyResponse()){
			$request = [];
			$model = Model::getInstance();
			$routeMD = $model->getRouteInstance;
			$routeMD->setRoute(GlobalSystem::ExpRouteError);

			if(!$error){
				$routeResponse = true;
				$lastError = error_get_last();

				if($lastError){
					$error = new Exception(
						$lastError[GlobalSystem::ExpErrorMessage],
						ErrorCodes::SystemError[GlobalSystem::ExpErrorCode]
					);
				}
			}

			$route = $routeMD->getRoute();
			$request[$route][GlobalSystem::ExpErrorCode] = $error->getCode();
			$request[$route][GlobalSystem::ExpErrorDesc] = $error->getMessage();

			$routeMD->setRequest($request);
			$routeMD->setResponseObject(true);

			if($routeResponse){
				new Response($request);
			}
		}
	}

	/**
	 * Throw error route
	 */
	public static function checkErrorRoute()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$route = $routeMD->getRoute();

		if($route == GlobalSystem::ExpRouteError){
			self::throwException($routeMD->getRequest());
		}
	}

	/**
	 * throw new exception in system
	 *
	 * @param $currentException
	 * @throws Exception
	 */
	public static function throwException($currentException)
	{
		throw new Exception($currentException[GlobalSystem::ExpErrorDesc], $currentException[GlobalSystem::ExpErrorCode]);
	}
}