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

			throw new Exception(ErrorManager::Method, ErrorManager::MethodCode);

		}catch(Exception $error){
			ErrorManager::onErrorRoute($error);
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
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		if($route){
			if(key_exists($route[0], RequestRoute::$routes)){
				$currentRoute = array_shift($route);
				$systemRoute = RequestRoute::$routes[$currentRoute];
				$routeParams = $systemRoute[GlobalSystem::ExpRouteKeyParams];
				$treatAsRoute = $systemRoute[GlobalSystem::ExpRoutesWithParams];
				$congruentRoute = (count($routeParams) == count($route));

				if($treatAsRoute){
					if($congruentRoute){
						foreach($routeParams as $key => $value){
							$method[$key] = current($route);
							next($route);
						}
					}else{
						throw new Exception(ErrorManager::HttpParams, ErrorManager::HttpParamsCode);
					}
				}

				$countParams = count($method);
				if($countParams && $congruentRoute){
					$serverMD = $model->getClientServerInstance;
					$authHeader = $serverMD->getHeader(GlobalSystem::ExpHeaderAuth);

					/*Zero value get user access to principal system and one value get structure merchant access*/
					$auth = (!$authHeader) ? 0 : 1;
					$routeMD->setAuthorization($auth);

					$request = array();
					$value = array_values($method);
					$parameter = array_keys($method);

					foreach($routeParams as $param => $format){
						for($i = 0; $i < $countParams; $i++){
							if($param == $parameter[$i]){
								$request[$currentRoute][$param] = GlobalSystem::validateData($value[$i], $format);
							}
						}
					}

					$insufficientParameters = array_diff_key($method, $request[$currentRoute]);
					if($insufficientParameters){
						throw new Exception(ErrorManager::HttpParams, ErrorManager::HttpParamsCode);
					}

					$routeMD->setRequest($request);
					$routeMD->setRoute($currentRoute);
					$this->validRequestAction($currentRoute);

					return true;
				}
			}
		}

		$routeMD->setRoute(GlobalSystem::ExpRouteViews);

		return true;
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