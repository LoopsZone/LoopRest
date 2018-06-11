<?php

/**
 * Class Response
 */
class Response
{
	private static $readyResponse = false;

	/**
	 * Response Manager
   *
	 * @param $response
	 */
	function __construct($response)
	{
	  $this->responseContentType();
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

    $route = $routeMD->getRoute();
    $translateRoute = GlobalSystem::translateSystemRoute();

		if($routeMD->getResponseObject()){
      $callback = $routeMD->getCallback();
      $responseObj = json_encode($response);
      $response = ($callback) ? "{$callback}({$responseObj});" : $responseObj;
    }else{

		  if($routeMD->getRoute() != GlobalSystem::ExpRouteView){
        $parentComponent = ucfirst($translateRoute);
        $view = CoreConfig::PRINCIPAL_VIEW . ':' . $parentComponent;
        $dataModel = [$translateRoute => $response[$route]];

		    if($route == GlobalSystem::ExpRouteError){

		      header("HTTP/1.0 {$response[$route][GlobalSystem::ExpErrorCode]} {$response[$route][GlobalSystem::ExpErrorDesc]}");

          $dataModel = [
            GlobalSystem::ExpRouteError => $parentComponent,
            GlobalSystem::ExpErrorCode => $response[$route][GlobalSystem::ExpErrorCode],
            GlobalSystem::ExpErrorDesc => $response[$route][GlobalSystem::ExpErrorDesc]
          ];
        }

        $request = [GlobalSystem::ExpRouteView => [GlobalSystem::ExpView => $view]];

        $routeMD->setRequest($request);
        $routeMD->setRoute(GlobalSystem::ExpRouteView);

        $views = new View();
        $response = $views->routingView($dataModel);
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
        if($type == GlobalSystem::ExpContentTypeTextHTML || $type == GlobalSystem::ExpContentTypeAll){
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
		Log::custom('ExecuteModels', json_encode(ModelsTracking::$executionSteps, JSON_PRETTY_PRINT));
	}
}