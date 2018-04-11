<?php

class ErrorManager extends ExceptionManager
{
	const MethodCode = 0;
	const Method = 'Method selected no valid or implemented';

	const HttpParamsCode = 1;
	const HttpParams = 'Invalid input params';

	const ActionCode = 2;
	const Action = 'Action selected no valid';

	/**
	 * If an exception is activated, an error path is activated in the system
	 *
	 * @param $error
	 */
	public static function onErrorRoute($error)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		$routeMD->setRoute(GlobalSystem::ExpRouteError);
		$route = $routeMD->getRoute();

		$request[$route][GlobalSystem::ExpErrorDoc] = $error->getFile();
		$request[$route][GlobalSystem::ExpErrorLine] = $error->getLine();
		$request[$route][GlobalSystem::ExpErrorCode] = $error->getCode();
		$request[$route][GlobalSystem::ExpErrorDesc] = $error->getMessage();

		$routeMD->setRequest($request);
	}
}