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
		if(!Response::ready()){
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
			$encodeMessage = json_decode($error->getMessage());
			$request[$route][GlobalSystem::ExpErrorCode] = $error->getCode();
			$request[$route][GlobalSystem::ExpErrorDesc] = ($encodeMessage) ? $encodeMessage : $error->getMessage();

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
	 * Throw new exception in system
	 *
	 * @param bool $currentException
	 * @throws Exception
	 */
	public static function throwException($currentException = false)
	{
		if(!$currentException[GlobalSystem::ExpErrorDesc]){
			$currentException = [];
			$currentException[GlobalSystem::ExpErrorDesc] = error_get_last();
		}

		throw new Exception($currentException[GlobalSystem::ExpErrorDesc], $currentException[GlobalSystem::ExpErrorCode]);
	}

  /**
   * Generate custom message
   *
   * @param $message
   * @param array $code
   * @throws Exception
   */
	public static function errorMessage($message, array $errorCode)
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $errorCode[GlobalSystem::ExpErrorDesc] = json_encode($message);
    $routeMD->setRequest([GlobalSystem::ExpRouteError => $message]);

    ErrorManager::throwException($errorCode);
  }
}