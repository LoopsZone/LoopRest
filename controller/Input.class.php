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
   * @return array|bool|mixed
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

		return false;
	}

  /**
   * Check current route, validate and verify data to set check input request type system
   * This method routing check input to new action checkInput principal system if exist valid request and type
   * Or return principal view to home system configured if not exist data input
   *
   * @return bool
   * @throws Exception
   * @throws ReflectionException
   */
	private function checkInput()
	{
		$model = Model::getInstance();
		$clientServerMD = $model->getClientServerInstance;

		$httpAction = $clientServerMD->getMethod();
		$availableMethod = GlobalSystem::validateData($httpAction, GlobalSystem::ExpFormatMethods);

		if($availableMethod){
			$this->validRoute();
			$this->giveAccess();
			$this->integrationRoute();

			return true;
		}

		ErrorManager::throwException(ErrorCodes::HttpMetHodExc);
	}

  /**
   * Valid route
   *
   * @return bool
   * @throws Exception
   */
	private function validRoute()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
    $clientServerMD = $model->getClientServerInstance;

		$route = $clientServerMD->getRoute();
		$currentRoute = array_shift($route);

		if($currentRoute){
      $systemRoute = RequestRoute::$routes;
      $translatedRoute = GlobalSystem::translateSystemRoute($currentRoute);
      $systemParams = $systemRoute[$translatedRoute][GlobalSystem::ExpRouteKeyParams];

      if(key_exists($translatedRoute, $systemRoute)){
        $countMethod = count($route);
        $routeMD->setRoute($currentRoute);
        $systemRoute = $systemRoute[$translatedRoute];
        $treatAsRoute = $systemRoute[GlobalSystem::ExpRoutesWithParams];

        if($treatAsRoute){
          $routeMethod = $systemRoute[GlobalSystem::ExpRouteMethod];

          $countSystemRoute = count($routeMethod);
          if($countMethod == $countSystemRoute){
            $format  = current($routeMethod);
            $nextMethod = array_shift($route);
            $method = GlobalSystem::validateData($nextMethod, $format);
            if($method){
              $routeMD->setMethod($method);
            }else{
              ErrorManager::throwException(ErrorCodes::ActionExc);
            }
          }
        }else{
          foreach($systemParams as $param => $format){
            if(count($route)){
              $value = array_shift($route);
              $request[$translatedRoute][$param] = GlobalSystem::validateData($value, $format);
            }else{
              ErrorManager::throwException(ErrorCodes::HttpParamsExc);
            }
          }

          $routeMD->setRequest($request);
          $this->validRequestAction($request);

          $params = array_merge($clientServerMD->getRequest(), $route);
          if(count($params)){
            ErrorManager::throwException(ErrorCodes::HttpParamsExc);
          }
        }

        return true;
      }
    }

		if(!$currentRoute && !count($clientServerMD->getRequest())){
      $request[GlobalSystem::ExpRouteView][GlobalSystem::ExpView] = CoreConfig::PRINCIPAL_VIEW;

      $routeMD->setRequest($request);
		  $routeMD->setRoute(GlobalSystem::ExpRouteView);

		  return true;
    }

    ErrorManager::throwException(ErrorCodes::ActionExc);
	}

	/**
	 * Check if the route has an integrated class
	 *
	 * @return bool
	 * @throws Exception
	 * @throws ReflectionException
	 */
	private function integrationRoute()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$systemRoute = RequestRoute::$routes;
		$serverMD = $model->getClientServerInstance;

		$integration = $routeMD->getRoute();
    $routeParams = $serverMD->getRequest();
    $translateRoute = GlobalSystem::translateSystemRoute($integration);

    $systemRoute = $systemRoute[$translateRoute];
		$treatAsRoute = $systemRoute[GlobalSystem::ExpRoutesWithParams];

		if($treatAsRoute){
			$integrated = ucfirst($integration);

			if(class_exists($integrated)){
				$currentIntegration = new $integrated();
				$method = ($routeMD->getMethod()) ? $routeMD->getMethod() : '__construct';

				$methodIntegrated = method_exists($currentIntegration, $method);

				if($methodIntegrated){
					$reflector = new ReflectionMethod($integrated, $method);
					$systemParams = $reflector->getParameters();

					if($systemParams){
            $countRoute = count($routeParams);
            $countSystemRoute = count($systemParams);

					  if(CoreConfig::DEV && key_exists(CoreConfig::XDEBUG_KEY, $routeParams)){
					    $countRoute--;
            }

            if(key_exists(GlobalSystem::CallbackKey, $routeParams)){
              $countRoute--;
              $routeMD->setCallback($routeParams[GlobalSystem::CallbackKey]);
            }

						if($countRoute == $countSystemRoute){
							foreach($systemParams as $param => $format){
								$key = $systemParams[$param]->name;
								if(key_exists($key, $routeParams)){
								  unset($systemParams[$param]);
									$request[$integration][$key] = $routeParams[$key];
                  $routeMD->setRequest($request);
                  $this->validRequestAction($translateRoute);
								}
							}

              return true;
						}

						ErrorManager::throwException(ErrorCodes::HttpParamsExc);
					}
				}

				ErrorManager::throwException(ErrorCodes::MetHodExc);
			}

			ErrorManager::throwException(ErrorCodes::ActionExc);
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
}