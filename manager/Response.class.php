<?php

/**
 * Class Response
 */
class Response extends ModelsTrack
{
	/**
	 * Response constructor.
	 * @param $response
	 */
	function __construct ($response)
	{
		$model = Model::getInstance();
		$routeMD= $model->getRouteInstance;

		if($routeMD->getResponseObject()) {
			$response = json_encode($response);
		}

		if(false){
			$response = ($_GET["callback"] . "({$response});");
		}

		echo $response;
	}
	
	public function __destruct ()
	{
		Log::custom('ExecuteModels', json_encode(self::$executionSteps, JSON_PRETTY_PRINT));
	}
}