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
      $systemParams = @$systemRoute[$translatedRoute][GlobalSystem::ExpRouteKeyParams];

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
				$method = GlobalSystem::translatedRouteMethod();
				$methodIntegrated = method_exists($integrated, $method);

				if($methodIntegrated){
					$reflector = new ReflectionMethod($integrated, $method);

					$routeParams = $routeMD->getParams();
					$routes = $clientServerMD->getRoute();
          $routeConfig = GlobalSystem::routeConfig();
					$systemParams = $reflector->getParameters();
					$treatParamsAsRoutes = $routeConfig[GlobalSystem::ExpTranslateParamsMethodWithRoutes];

					unset($routes[0]);
					unset($routes[1]);
					if($systemParams){
						foreach($systemParams as $param){
							if($param instanceof ReflectionParameter){
                $check = true;
								$key = $param->name;
								if($treatParamsAsRoutes){
									if(!key_exists($key, $routeParams) && $routes){
										$currentParamAsRoute = array_shift($routes);
										$routeParams[$key] = $currentParamAsRoute;
									}
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
            $body = file_get_contents('php://input');

						$routeMD->setBody($body);
						$routeMD->setRequest($request);
            $this->validateFormatFieldsBodyActionMethod();

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
	
	/**
	 * @throws Exception
	 */
  private function validateFormatFieldsBodyActionMethod()
  {
	  $model = Model::getInstance();
	  $route = GlobalSystem::routeConfig();
	  $routeMD = $model->getRouteInstance;
	  $clientServerMD = $model->getClientServerInstance;

	  $body = $routeMD->getBody();
	  $method = $routeMD->getMethod();
	  $currentRoute = $routeMD->getRoute();
	  $newRoute = ($currentRoute == GlobalSystem::ExpTranslateRequestRoutesRoute);
	  $bodyFormat = $routes = Cache::getDocument(CoreConfig::CACHE_TRANSLATE_ROUTES);

	  if(key_exists($method, $routes[$currentRoute][GlobalSystem::ExpTranslateMethodsRoute])){
		  $bodyFormat = @$route[GlobalSystem::ExpFormatMethods][$routeMD->getMethod()][strtolower($clientServerMD->getMethod())];
		  $newBody = array_merge($routes[$currentRoute][GlobalSystem::ExpTranslateMethodsRoute], json_decode($body, true));
		  $routes[$currentRoute][GlobalSystem::ExpTranslateMethodsRoute][$method][strtolower(GlobalSystem::ExpMethodPost)] = $newBody;
	  }

	  if($route && !count($bodyFormat)){
		  if(key_exists(GlobalSystem::ExpFormatMethods, $route)){
			 
		  }
	  }
	
	  if(!$body && $bodyFormat){
		  $errorMessage['message'] = 'Empty body structure, the action needs the following body format';
		  $errorMessage['structure'] = $bodyFormat;
		
		  ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
	  }

	  foreach($body as $field => $value){
		  if(is_array($value)){
			  $bodyFormat = ($bodyFormat) ? $bodyFormat[$field] : [];
			  $routeMD->setBody($body[$field]);
			  $this->validateFormatFieldsBodyActionMethod();
			  $routeMD->setBody($body);
		  }else{
			  if($newRoute && !$bodyFormat){
				  if($clientServerMD->getMethod() != GlobalSystem::ExpMethodPut){
					  if(!in_array($value, GlobalSystem::BodyFieldsFormatAccepts)){
						  $errorMessage = "Invalid format selected: '{$value}', expected a input format from system";
						  ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
					  }
				  }
			  }else{
				  $result = GlobalSystem::validateData($value, $bodyFormat[$field]);

				  if(!$result){
					  $errorMessage = "Invalid value '{$value}', expected data type: {$bodyFormat[$field]}, required for this parameter";
					  ErrorManager::errorMessage($errorMessage, ErrorCodes::HttpParamsExc);
				  }
			  }
		  }
	  }
  }
}