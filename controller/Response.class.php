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
		$clientServerMD = $model->getClientServerInstance;

    $accept = $clientServerMD->getHeader(GlobalSystem::ExpHeaderAccept);
		$contentType = $clientServerMD->getHeader(GlobalSystem::ExpHeaderContentType);
    $accepting = explode(',', $accept);

    $format = $response;
		if($routeMD->getResponseObject()){
		  $format = '<pre>%s</pre>';
			$response = json_encode($response, JSON_PRETTY_PRINT);

      $callback = $routeMD->getCallback();
      if($callback){
        $format = ("{$callback}({$response});");
      }
    }

		self::$readyResponse = true;
    printf($format, $response);
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