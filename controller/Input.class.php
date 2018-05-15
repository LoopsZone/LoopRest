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

			if(GlobalSystem::validateData($httpAction, GlobalSystem::ExpFormatMethods)){
				$allowInput = $this->checkInput($clientInfoMD->getRoute(), $_REQUEST);

				if($allowInput){
					$system = $model->getSystemInstance;
					return $system->runInitialSystemSettings();
				}
			}

			ErrorManager::throwException(ErrorCodes::MetHodExc);

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
	private function checkInput($route, $params)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$serverMD = $model->getClientServerInstance;

		if($route){
			if($this->validRoute($route)){
				array_shift($route);
				$value = array_values($params);
				$parameter = array_keys($params);
				$currentRoute = $routeMD->getRoute();
				$systemRoute = RequestRoute::$routes[$currentRoute];
				$systemParams = $this->integrationRoute($currentRoute);
				$routeParams = $systemRoute[GlobalSystem::ExpRouteKeyParams];

				if($systemParams){
					array_shift($route);
					if(count($params) == count($systemParams)){
						foreach($systemParams as $param){
							if(!key_exists($param->name, $params)){
								ErrorManager::throwException(ErrorCodes::HttpParamsExc);
							}
						}
					}else{
						ErrorManager::throwException(ErrorCodes::HttpParamsExc);
					}
				}

				foreach($routeParams as $param => $format){
					if($route){
						$params[$param] = current($route);
						$currentKey = key($route);
						next($route);
						unset($route[$currentKey]);
					}

					$request[$currentRoute][$param] = GlobalSystem::validateData($params[$param], $format);
				}

				$authHeader = $serverMD->getHeader(GlobalSystem::ExpHeaderAuth);
				$auth = (!$authHeader) ? 0 : 1;/*Zero value get user access to principal system and one value get structure merchant access*/

				$request[$currentRoute] = $params;
				$routeMD->setRequest($request);
				$routeMD->setAuthorization($auth);
				$this->validRequestAction($currentRoute);

				return true;
			}

			ErrorManager::throwException(ErrorCodes::MetHodExc);
		}

		if(count($params)){
			ErrorManager::throwException(ErrorCodes::HttpParamsExc);
		}

		$routeMD->setRoute(GlobalSystem::ExpRouteView);

		return true;
	}

	/**
	 * Valid route
	 *
	 * @param $route
	 * @return bool
	 * @throws Exception
	 */
	private function validRoute($route)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$currentRoute = array_shift($route);
		$systemRoute = RequestRoute::$routes;

		if(key_exists($currentRoute, RequestRoute::$routes)){
			$routeMD->setRoute($currentRoute);
			$treatAsRoute = $systemRoute[$currentRoute][GlobalSystem::ExpRoutesWithParams];

			if($treatAsRoute){
				$systemRoute = RequestRoute::$routes[$currentRoute];
				$routeMethod = $systemRoute[GlobalSystem::ExpRouteMethod];

				$countRoute = count($route);
				$countSystemRoute = count($routeMethod);
				if($countRoute == $countSystemRoute && $countRoute == 1){
					$param = key($routeMethod);
					$format  = current($routeMethod);
					$value = GlobalSystem::validateData(current($route), $format);
					if($value){
						$routeMD->setMethod($value);
					}else{
						ErrorManager::throwException(ErrorCodes::ActionExc);
					}
				}
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
	private function integrationRoute($integration)
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$systemRoute = RequestRoute::$routes;
		$treatAsRoute = $systemRoute[$integration][GlobalSystem::ExpRoutesWithParams];

		if($treatAsRoute){
			$route = $routeMD->getRoute();
			$integrated = class_exists(ucfirst($integration));
			$method = ($routeMD->getMethod()) ? $routeMD->getMethod() : '__construct';
			$reflector = new ReflectionMethod($route, $method);

			return $reflector->getParameters();
		}

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