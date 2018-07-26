<?php

/**
 * Class Input
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Input extends Manager
{
  /**
   * Read the new request, verify the minimum configuration and input validity
   *
   * @return array|bool|mixed
   */
	public function request()
	{
		try{
			if($this->checkInput()){
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
   * Validate the incoming route, verify the corresponding access and integrate the route with the necessary parameters
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

		$this->washParams();
    $params = $routeMD->getParams();

		if($currentRoute){
      $routeMD->setRoute($currentRoute);
      $systemRoute = RequestRoute::$routes;
      $translatedRoute = GlobalSystem::translateSystemRoute();
      $systemParams = $systemRoute[$translatedRoute][GlobalSystem::ExpRouteKeyParams];

      if(key_exists($translatedRoute, $systemRoute)){
        $systemRoute = $systemRoute[$translatedRoute];
        $treatAsRoutes = $systemRoute[GlobalSystem::ExpRoutesWithParams];

        if($treatAsRoutes){
          $routeMethod = $systemRoute[GlobalSystem::ExpRouteMethod];
	        $format  = current($routeMethod);
	        $nextMethod = array_shift($route);
	        $method = GlobalSystem::validateData($nextMethod, $format);
	        if($method){
		        $routeMD->setMethod($method);
	        }else{
		        ErrorManager::throwException(ErrorCodes::ActionExc);
	        }
        }else{

          $routeParams = $clientServerMD->getRequest();
          if($translatedRoute == GlobalSystem::ExpRouteView){
            $routeParams[GlobalSystem::ExpView] = array_shift($route);
          }

          foreach($systemParams as $param => $format){
            $value = $routeParams[$param];
            $request[$translatedRoute][$param] = GlobalSystem::validateData($value, $format);

            unset($routeParams[$param]);
          }

          $routeMD->setRequest($request);
          $params = array_merge($route, $routeParams);
          if(count($params)){
            ErrorManager::throwException(ErrorCodes::HttpParamsExc);
          }
        }

        return true;
      }
    }

		if(!$currentRoute){
		  if(!count($params)){
        $routeMD->setRoute(GlobalSystem::ExpRouteView);
        return true;
      }

      ErrorManager::throwException(ErrorCodes::HttpParamsExc);
    }

    ErrorManager::throwException(ErrorCodes::MetHodExc);
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
		$clientServerMD = $model->getClientServerInstance;
    $translateRoute = GlobalSystem::translateSystemRoute();

    $systemRoute = $systemRoute[$translateRoute];
		$treatAsRoute = $systemRoute[GlobalSystem::ExpRoutesWithParams];

		if($treatAsRoute){
			$currentRoute = $routeMD->getRoute();
			$integrated = ucfirst($currentRoute);

			if(class_exists($integrated)){
				$currentIntegration = new $integrated();
				$method = GlobalSystem::translatedRouteMethod();
				$methodIntegrated = method_exists($currentIntegration, $method);

				if($methodIntegrated){
					$reflector = new ReflectionMethod($integrated, $method);

					$routeParams = $routeMD->getParams();
					$routes = $clientServerMD->getRoute();
					$systemParams = $reflector->getParameters();
					$routeConfig = GlobalSystem::TranslatedRequestRoutes[$currentRoute];
					$treatParamsAsRoutes = $routeConfig[GlobalSystem::ExpTranslateParamsMethodWithRoutes];

					unset($routes[0]);
					unset($routes[1]);
					if($systemParams){
						foreach($systemParams as $param => $format){
							if($systemParams[$param] instanceof ReflectionParameter){
								$key = $systemParams[$param]->name;

								if($treatParamsAsRoutes){
									if(!$routeParams[$key] && $routes){
										$currentParamAsRoute = array_shift($routes);
										$routeParams[$key] = $currentParamAsRoute;
									}
								}

								if($systemParams[$param]->isOptional()){
									if(!key_exists($key, $routeParams)){
										$routeParams[$key] = $systemParams[$param]->getDefaultValue();
									}
								}

								if(!key_exists($key, $routeParams)){
									unset($routeParams);
								}
							}
						}
					}

					$request[$translateRoute] = array_merge($routeParams, $routes);
					if(count($request[$translateRoute]) == count($systemParams)){
						$routeMD->setRequest($request);
						return true;
					}

					ErrorManager::throwException(ErrorCodes::HttpParamsExc);
				}

				ErrorManager::throwException(ErrorCodes::MetHodExc);
			}

			ErrorManager::throwException(ErrorCodes::ActionExc);
		}
	}

  /**
   * Wash route parameters of system options parameters from the request
   */
	private function washParams()
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $clientServerMD = $model->getClientServerInstance;

    $params = $clientServerMD->getRequest();
    if(key_exists(GlobalSystem::CallbackKey, $params)){
      $routeMD->setCallback($params[GlobalSystem::CallbackKey]);
      unset($params[GlobalSystem::CallbackKey]);
    }

    if(CoreConfig::DEV && key_exists(CoreConfig::DEBUG_KEY, $params)){
      unset($params[CoreConfig::DEBUG_KEY]);
    }

    $routeMD->setParams($params);
  }
}