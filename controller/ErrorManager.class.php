<?php

class ErrorManager
{
	/**
	 * If an exception is activated, an error path is activated in the system
	 *
	 * @param $error
	 */
	public static function onErrorRoute($error = false)
	{
		if(!Response::getReadyResponse()){
			$request = [];
			$routeResponse = false;
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