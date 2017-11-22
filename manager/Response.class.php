<?php

/**
 * Class Response
 */
class Response
{
	/**
	 * Response constructor.
	 * @param $response
	 */
	function __construct ($response)
	{
		$model = Model::getInstance();
		$routeMD= $model->getRouteInstance();
		
		if($routeMD->getResponseObject()) {
			$response = json_encode($response);
		}
		
		if(false){
			$response = ($_GET["callback"] . "({$response});");
		}
		
		echo $response;
	}
}