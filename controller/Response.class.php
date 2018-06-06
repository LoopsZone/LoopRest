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
	  $this->responseContentType();
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		if($routeMD->getResponseObject()){
      $callback = $routeMD->getCallback();
      $response = json_encode($response, JSON_PRETTY_PRINT);
      $response = ($callback) ? "{$callback}({$response});" : $response;
    }else{

		  if($routeMD->getRoute() != GlobalSystem::ExpRouteView){
        $request = [GlobalSystem::ExpRouteView => [GlobalSystem::ExpView => '404']];

        $routeMD->setRequest($request);
        $routeMD->setRoute(GlobalSystem::ExpRouteView);

        $views = new View();
        $response = $views->routingView(['test' => 'valor', 'test2' => 'valor2']);
      }
    }

    echo($response);
    self::$readyResponse = true;
	}

  /**
   * Check type accept content type client
   */
	private function responseContentType()
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $clientServerMD = $model->getClientServerInstance;

    $accept = $clientServerMD->getHeader(GlobalSystem::ExpHeaderAccept);
    $contentAccepting = explode(',', $accept);

    foreach($contentAccepting as $content => $type){
      if(in_array($type, GlobalSystem::ContentTypesAllows)){
        if($type == GlobalSystem::ExpContentTypeTextHTML){
          $routeMD->setResponseObject(false);
          break;
        }
      }
    }
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