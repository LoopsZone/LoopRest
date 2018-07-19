<?php

class ErrorManager extends ExecutionStepsErrors
{
	/**
	 * If an exception is activated, the error route in the system is activated
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

      $codeErrorResponse = $error->getCode();
      $descriptionErrorResponse = $error->getMessage();
			if(key_exists($error->getMessage(), ExecutionStepsErrors::$errorCodesSteps)){
        $descriptionErrorResponse = '';
			  $codeErrorResponse = ErrorCodes::MetHodsCodesResponse[GlobalSystem::ExpMethodGet];
      }

      $routeMD->setCodeResponse($codeErrorResponse);
      $routeMD->setDescriptionResponse($descriptionErrorResponse);

			$routeMD->setRequest($request);
			$routeMD->setResponseObject(true);

			if($routeResponse){
				new Response($request);
			}
		}
	}

	/**
	 * Check if exist last error in model and throw error route
	 *
	 * @throws Exception
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
	 * Throw new exception in system
	 *
	 * @param $currentException
	 * @throws Exception
	 */
	public static function throwException($currentException)
	{
		if(!$currentException[GlobalSystem::ExpErrorDesc]){
			$currentException[GlobalSystem::ExpErrorDesc] = error_get_last();
		}

		throw new Exception($currentException[GlobalSystem::ExpErrorDesc], $currentException[GlobalSystem::ExpErrorCode]);
	}
}