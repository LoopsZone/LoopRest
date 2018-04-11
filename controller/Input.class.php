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
	 * @return bool
	 */
	public function request()
	{
		try{
			$model = Model::getInstance();
			$clientInfoMD = $model->getClientServerInstance;
			$httpAction = $clientInfoMD->getMethod();
			$responseObject = ($httpAction != GlobalSystem::ExpMethodGet);
			$routeMD = $model->getRouteInstance;
			$routeMD->setResponseObject($responseObject);

			if(GlobalSystem::validateData($httpAction, GlobalSystem::ExpFormatMethods)){
				$route = $clientInfoMD->getUrl();
				if(strpos($route, '?')){
					$route = strstr($route, '?', true);
				}

				$route = GlobalSystem::validateData($route, GlobalSystem::ExpFormatRoutes);

				return $this->checkInput($route, $_REQUEST);
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
	 * @param $route
	 * @param $method
	 * 
	 * @return bool
	 * @throws Exception
	 */
	protected function checkInput($route, $method)
	{
		$countParams = count($method);
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		if($countParams){
			$serverMD = $model->getClientServerInstance;
			$authHeader = $serverMD->getHeader(GlobalSystem::ExpHeaderAuth);

			/*Zero value get user access to principal system and one value get structure merchant access*/
			$auth = (!$authHeader) ? 0 : 1;
			$routeMD->setAuthorization($auth);

			$found = false;
			$request = null;
			$routeName = null;
			$parameter = array_keys($method);
			$value = array_values($method);
			// Generate set to variables that need request
			foreach(RequestRoute::$routes as $set => $route){
				foreach($route[GlobalSystem::ExpRouteKeyParams] as $param => $format){
					for($i = 0; $i < $countParams; $i++){
						if($param == $parameter[$i]){
							$routeName = $set;
							$request[$routeName][$param] = GlobalSystem::validateData($value[$i], $format);
						}
					}

					if(count($request[$routeName]) == $countParams){
						$found = true;
						break;
					}
				}

				if($found){
					$routeMD->setResponseObject(true);
					break;
				}
			}

			if(!$found){
				throw new Exception('Invalid input params', 1);
			}

			$routeMD->setRoute($routeName);
			$routeMD->setRequest($request);
			$this->validRequestAction($routeName);

			return true;
		}

		$routeMD->setRoute(GlobalSystem::ExpRouteViews);

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
		if($route == GlobalSystem::ExpRouteRequest){
			$model = Model::getInstance();
			$routeMD = $model->getRouteInstance;
			$serverMD = $model->getClientServerInstance;

			$routeMD->setAction($serverMD->getMethod());
			return true;
		}

		return false;
	}
}