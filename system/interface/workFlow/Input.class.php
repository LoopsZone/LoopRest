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
				$system = Model::systemInstance();
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
		$clientServerMD = Model::clientServerInstance();

		$httpAction = $clientServerMD->getMethod();
		$availableMethod = GlobalSystem::validateData($httpAction, GlobalSystem::ExpFormatMethods);

		if($availableMethod){
			$this->giveAccess();
			$this->validateModel();
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
	private function validateModel()
	{
		$routeMD = Model::routeInstance();
    $clientServerMD = Model::clientServerInstance();

		$route = (array) $clientServerMD->getRoute();
		$currentRoute = array_shift($route);

		$this->washParams();
    $params = $routeMD->getParams();

		if($currentRoute){
      $routeMD->setRoute($currentRoute);
			$systemRoute = RequestRoute::$routes;
      $translatedRoute = GlobalSystem::routeType();
      $systemParams = @$systemRoute[$translatedRoute][GlobalSystem::ExpRouteKeyParams];

      if(key_exists($translatedRoute, $systemRoute)){
        $systemRoute = $systemRoute[$translatedRoute];
        $friendlyURL = $systemRoute[GlobalSystem::ExpFriendlyURL];

        if($friendlyURL){
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
		$routeMD = Model::routeInstance();
		$clientServerMD = Model::clientServerInstance();
    $translateRoute = GlobalSystem::routeType();

		$systemRoute = RequestRoute::$routes;
    $systemRoute = $systemRoute[$translateRoute];
		$treatAsRoute = $systemRoute[GlobalSystem::ExpFriendlyURL];

		if($treatAsRoute){
			$currentRoute = $routeMD->getRoute();
			$integrated = ucfirst($currentRoute);

			if(class_exists($integrated)){
				$method = GlobalSystem::translatedRouteMethod();
				$methodIntegrated = method_exists($integrated, $method);

				if($methodIntegrated){
					$reflector = new ReflectionMethod($integrated, $method);

					$routes = (array) $clientServerMD->getRoute();
          $routeConfig = GlobalSystem::routeConfig();
					$systemParams = $reflector->getParameters();
					$treatParamsAsRoutes = $routeConfig[GlobalSystem::ExpTranslateParamsMethodWithRoutes];
					$routeParams = ($treatParamsAsRoutes) ? [] : $routeMD->getParams();

					unset($routes[0]);
					unset($routes[1]);
					if($systemParams){
						foreach($systemParams as $param){
							if($param instanceof ReflectionParameter){
                $check = true;
								$key = $param->name;
								if($treatParamsAsRoutes){
									$currentParamAsRoute = array_shift($routes);
									$routeParams[$key] = $currentParamAsRoute;
								}

								if($param->isOptional()){
									if(!key_exists($key, $routeParams)){
									  $check = false;
										$routeParams[$key] = $param->getDefaultValue();
									}
								}

                if($check){
								  $paramType = $param->getType();
								  if($paramType){
									  $result = true;
									  $input = $routeParams[$key];

									  if(method_exists($paramType,'getName')){
										  $format = $paramType->getName();
										  settype($input, $format);
										  $result = GlobalSystem::validateData($input, $format);
									  }

                    if(!$result && $format != GlobalSystem::ExpFormatBool){
                      $errorMessage['message'] = "Invalid value '{$routeParams[$key]}', expected data type:{$format}, required for this parameter";
                      ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
                    }
                  }
                }

								if(!key_exists($key, $routeParams)){
									unset($routeParams);
									break;
								}
							}
						}
					}

					$request[$translateRoute] = array_merge($routeParams, $routes);
					if(count($request[$translateRoute]) == count($systemParams)){
						$routeMD->setRequest($request);
						$routeMD->setBody($routeMD->getParams());

						return true;
					}

					ErrorManager::throwException(ErrorCodes::HttpParamsExc);
				}

				ErrorManager::throwException(ErrorCodes::MetHodExc);
			}

			ErrorManager::throwException(ErrorCodes::ActionExc);
		}

		return true;
	}

  /**
   * Wash route parameters of system options parameters from the request
   */
	private function washParams()
  {
    $routeMD = Model::routeInstance();
    $clientServerMD = Model::clientServerInstance();

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

  /**
   * Validate format in current input route param
   *
   * @param $input
   * @param $format
   * @throws Exception
   */
  public static function validate(&$input, $format)
  {
    $result = GlobalSystem::validateData($input, $format);

    if($result){
      $input = $result;
    }else{
      $errorMessage = "Invalid value '{$input}', expected data type: {$format}, required for this parameter";
      ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
    }
  }
}