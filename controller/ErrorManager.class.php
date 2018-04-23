<?php

class ErrorManager
{
	const MetHodExc = [
		GlobalSystem::ExceptionCode => 0,
		GlobalSystem::ExceptionDesc => 'Method selected no valid or implemented'
	];

	const HttpParamsExc = [
		GlobalSystem::ExceptionCode => 1,
		GlobalSystem::ExceptionDesc => 'Invalid input params'
	];

	const ActionExc = [
		GlobalSystem::ExceptionCode => 2,
		GlobalSystem::ExceptionDesc => 'Action selected no valid'
	];

	/**
	 * If an exception is activated, an error path is activated in the system
	 *
	 * @param $error
	 */
	public static function onErrorRoute($error = false)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		$routeMD->setRoute(GlobalSystem::ExpRouteError);
		$route = $routeMD->getRoute();

		$error = ($error) ? $error : error_get_last();
		$request[$route][GlobalSystem::ExpErrorDoc] = $error->getFile();
		$request[$route][GlobalSystem::ExpErrorLine] = $error->getLine();
		$request[$route][GlobalSystem::ExpErrorCode] = $error->getCode();
		$request[$route][GlobalSystem::ExpErrorDesc] = $error->getMessage();

		$routeMD->setRequest($request);
		$routeMD->setResponseObject(true);

		if(!$error){
			new Response($request);
		}
	}

	public static function throwException($currentException)
	{
		throw new Exception($currentException[GlobalSystem::ExceptionDesc], $currentException[GlobalSystem::ExceptionCode]);
	}
}