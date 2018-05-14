<?php

/**
 * Class Response
 */
class Response extends ModelsTracking
{
	private static $readyResponse = false;

	/**
	 * Response constructor.
	 * @param $response
	 */
	function __construct($response)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		if($routeMD->getResponseObject()){
			$response = json_encode($response);
		}

		if(false){
			$response = ($_GET["callback"] . "({$response});");
		}

		self::$readyResponse = true;
		echo $response;
	}

	/**
	 * Get if response its ready
	 *
	 * @return bool
	 */
	public static function getReadyResponse()
	{
		return self::$readyResponse;
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