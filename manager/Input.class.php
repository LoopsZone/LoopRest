<?php

/**
 * Class Input
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Input extends Manager
{
	/**
	 * Route action to execute set to params
	 *
	 * @return array|bool|strcheckInputg
	 */
	public function request ()
	{
		try {
			
			$model = Model::getInstance();
			$routeMD = $model->getRouteInstance();
			$clientInfoMD = $model->getClientServerInstance();
			$httpAction = $clientInfoMD->getMethod();
			$resposeObject = ($httpAction != GlobalSystem::ExpMethodGet);
			$routeMD->setResponseObject($resposeObject);
			
			if(GlobalSystem::availableMethod($httpAction)){
				return $this->checkInput($_REQUEST);
			}
			
			throw new Exception('Action selected no valid or implemented', 0);
			
		}catch(Exception $error){
			GlobalSystem::onErrorRoute($error);
			return false;
		}
	}
	
	/**
	 * Check current route, validate and verify data to set check input request type system
	 * This method routing check input to new action checkInput principal system if exist valid request and type
	 * Or return principal view to home system configured if not exist data input
	 *
	 * @param $countParams
	 * @param $parameter
	 * @param $value
	 * @return bool
	 */
	protected function checkInput($method)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance();
		$serverMD = $model->getClientServerInstance();
		$authHeader = $serverMD->getHeader(Expected::ExpHeaderAuth);
		
		/*
		 * Cero value get usser access to principal system and one value get structure merchange access
		 */
		$auth = (!$authHeader) ? 0 : 1;
		$routeMD->setAuthorization($auth);
		
		$countParams = count($method);
		$parameter = array_keys($method);
		$value = array_values($method);
		
		if($countParams) {
			
			$found = false;
			$request = null;
			$routeName = null;
			
			// Generate set to variables that need request
			foreach(RequestRoute::$routes as $set => $route) {
				foreach($route[GlobalSystem::ExpRouteKeyParams] as $param => $format) {
					for($i = 0; $i < $countParams; $i++) {
						if($param == $parameter[$i]) {
							$routeName = $set;
							$request[$routeName][$param] = GlobalSystem::validateData($value[$i], $format);
						}
					}
					
					if(count($request[$routeName]) == $countParams) {
						$found = true;
						break;
					}
				}
				
				if($found) {
					$routeMD->setResponseObject(true);
					break;
				}
			}
			
			if(!$found) {
				throw new Exception('Invalid input params', 1);
			}
			
			$routeMD->setRoute($routeName);
			$routeMD->setRequest($request);
			$this->validRequestAction($routeName);
			
			return true;
		}
		
		$routeMD->setRoute(Expected::ExpRouteView);
		
		return false;
	}
	
	/**
	 * Validate and set action from request
	 *
	 * @param $route
	 * @return bool
	 */
	private function validRequestAction($route)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance();
		$serverMD = $model->getClientServerInstance();
		
		if($route == Expected::ExpRouteRequest){
			$routeMD->setAction($serverMD->getMethod());
			return true;
		}
		
		return false;
	}
}