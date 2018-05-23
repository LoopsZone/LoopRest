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
	 */
	public function request()
	{
		try{
			$allowInput = $this->checkInput();

			if($allowInput){
				$model = Model::getInstance();
				$system = $model->getSystemInstance;
				return $system->runInitialSystemSettings();
			}
		}catch(Exception $error){
			ErrorManager::onErrorRoute($error);
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
	private function checkInput()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$serverMD = $model->getClientServerInstance;

		$httpAction = $serverMD->getMethod();
		$availableMethod = GlobalSystem::validateData($httpAction, GlobalSystem::ExpFormatMethods);

		if($availableMethod){
			$this->validRoute();
			$this->integrationRoute();
			
			$authHeader = $serverMD->getHeader(GlobalSystem::ExpHeaderAuth);
			$auth = (!$authHeader) ? 0 : 1;/*Zero value get user access to principal system and one value get structure merchant access*/
			
			$routeMD->setAuthorization($auth);
			
			return true;
		}

		ErrorManager::throwException(ErrorCodes::MetHodExc);
	}

	/**
	 * Valid route
	 *
	 * @param $route
	 * @return bool
	 * @throws Exception
	 */
	private function validRoute()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		$route = $routeMD->getRoute();
		$currentRoute = array_shift($route);

		$systemRoute = RequestRoute::$routes;
		$currentRoute = $this->translateSystemRoute($currentRoute);

		if(key_exists($currentRoute, $systemRoute)){
			$countRoute = count($route);
			$routeMD->setRoute($currentRoute);
			$systemRoute = RequestRoute::$routes[$currentRoute];
			$treatAsRoute = $systemRoute[$currentRoute][GlobalSystem::ExpRoutesWithParams];

			if($treatAsRoute){
				$routeMethod = $systemRoute[GlobalSystem::ExpRouteMethod];

				$countSystemRoute = count($routeMethod);
				if($countRoute == $countSystemRoute){
					$param = key($routeMethod);
					$format  = current($routeMethod);
					$nextMethod = array_shift($route);
					$method = GlobalSystem::validateData($nextMethod, $format);
					if($method){
						$routeMD->setMethod($method);
					}else{
						ErrorManager::throwException(ErrorCodes::ActionExc);
					}
				}

				ErrorManager::throwException(ErrorCodes::ActionExc);
			}

			
			
			if(count($route)){
				ErrorManager::throwException(ErrorCodes::HttpParamsExc);
			}

			return true;
		}

		return false;
	}

	/**
	 * Check if the route has an integrated class
	 *
	 * @param $integration
	 * @return bool|ReflectionParameter[]
	 */
	private function integrationRoute()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$systemRoute = RequestRoute::$routes;
		$serverMD = $model->getClientServerInstance;

		$integration = $routeMD->getRoute();
		$treatAsRoute = $systemRoute[$integration][GlobalSystem::ExpRoutesWithParams];

		if($treatAsRoute){
			$route = $routeMD->getRoute();
			$integrated = ucfirst($integration);

			if(class_exists($integrated)){
				$currentIntegration = new $integrated();
				$method = ($routeMD->getMethod()) ? $routeMD->getMethod() : '__construct';

				$methodIntegrated = method_exists($currentIntegration, $method);

				if($methodIntegrated){
					$reflector = new ReflectionMethod($route, $method);
					$systemParams = $reflector->getParameters();

					if($systemParams){
						$routeParams = $serverMD->getRequest();

						$countRoute = count($routeParams);
						$countSystemRoute = count($systemParams);

						if($countRoute == $countSystemRoute){
							foreach($systemParams as $param => $format){
								$key = $systemParams[$param]->name;
								if(key_exists($key, $routeParams)){
									$request[$route][$key] = $routeParams[$key];
								}
							}

							$routeMD->setRequest($request);
							$this->validRequestAction($request);
						}
					}
				}
			}
		}
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
	
	private function translateSystemRoute($route)
	{
		if($route != GlobalSystem::ExpRouteStartup){
			//TODO translate route in model DB
		}

		return $route;
	}
}