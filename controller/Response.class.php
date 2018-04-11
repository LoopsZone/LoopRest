<?php

/**
 * Class Response
 */
class Response extends ModelsTracking
{
	/**
	 * Response constructor.
	 * @param $response
	 */
	function __construct ($response)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		if($routeMD->getResponseObject()){
			$response = json_encode($response);
		}

		if(false){
			$response = ($_GET["callback"] . "({$response});");
		}

		echo $response;
	}

	/**
	 * Used to complete the steps of executing model tracking
	 *
	 * @see Model
	 * @see ModelsTracking
	 * @see StepsRoutes::$executionSteps
	 */
	public function __destruct()
	{
		Log::custom('ExecuteModels', json_encode(self::$executionSteps, JSON_PRETTY_PRINT));
	}
}