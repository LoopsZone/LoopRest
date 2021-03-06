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
		$routeMD = Model::routeInstance();

    $route = $routeMD->getRoute();
    $translateRoute = GlobalSystem::routeType();

		if($routeMD->getResponseObject()){
      $callback = $routeMD->getCallback();
      $responseObj = json_encode($response);
      $response = ($callback) ? "{$callback}({$responseObj});" : $responseObj;
    }else{

		  if($routeMD->getRoute() != GlobalSystem::ExpRouteView){
        $parentComponent = ucfirst($translateRoute);
        $dataModel = [$translateRoute => $response[$route]];
        $view = CoreConfig::PRINCIPAL_VIEW . ':' . $parentComponent;

		    if($route == GlobalSystem::ExpRouteError){
          $dataModel = [
            GlobalSystem::ExpRouteError => $parentComponent,
            GlobalSystem::ExpErrorCode => $response[$route][GlobalSystem::ExpErrorCode],
            GlobalSystem::ExpErrorDesc => $response[$route][GlobalSystem::ExpErrorDesc]
          ];
        }

        $request = [GlobalSystem::ExpRouteView => [GlobalSystem::ExpView => $view]];

			  $routeMD->setRoute(GlobalSystem::ExpRouteView);
        $routeMD->setRequest($request);

        $views = new View();
        $response = $views->routingView($dataModel);
      }
    }

    $this->headersResponse();

    echo($response);
    self::$readyResponse = true;
	}

  /**
   * Setting current header response code
   */
	private function headersResponse(){
    $routeMD = Model::routeInstance();
    $clientServerMD = Model::clientServerInstance();

    $code = $routeMD->getCodeResponse();
    $protocol = $clientServerMD->getProtocol();
    $description = ($routeMD->getDescriptionResponse()) ? $routeMD->getDescriptionResponse() : '';
    $contentType = ($routeMD->getResponseObject()) ? GlobalSystem::ExpContentTypeApplicationJSON : GlobalSystem::ExpContentTypeTextHTML;

    header_remove("X-Powered-By");
    header("{$protocol} {$code} {$description}");
    header(GlobalSystem::ExpHeaderContentType . ": {$contentType}");

    if(($clientServerMD->getMethod() == GlobalSystem::ExpMethodPut ||
    	$clientServerMD->getMethod() == GlobalSystem::ExpMethodPost) &&
	    ErrorCodes::MetHodsCodesResponse[$clientServerMD->getMethod()] == $code
    ){header("Location: {$clientServerMD->getRedirectURL()}");}
  }

  /**
   * Check type accept content type client
   */
	private function responseContentType()
  {
    $routeMD = Model::routeInstance();
    $clientServerMD = Model::clientServerInstance();

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
	public static function ready()
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
		Log::custom('ExecuteModels', json_encode(Model::getExecutionSteps(), JSON_PRETTY_PRINT));
	}
}