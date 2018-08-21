<?php

/**
 * Class Manager
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Manager extends Auth
{
	/**
	 * Routing and format response to request
	 */
	public function response()
	{
		new Response($this->route());
	}

	/**
   * Switching the type of the corresponding core route
   *
	 * @return array|mixed|string
	 */
	private function route()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		try{
			switch($routeMD->getTrigger()){
				case GlobalSystem::ExpAuthTrigger:
					return $this->auth();
				case GlobalSystem::ExpErrorTrigger:
					return $this->error();
				case GlobalSystem::ExpViewTrigger:
					return $this->view();
				case GlobalSystem::ExpRequestTrigger:
					return $this->request();
				default: ErrorManager::throwException(ErrorCodes::ActionExc);
			}
		}catch(Exception $error){
			ErrorManager::onErrorRoute($error);
			return $this->error();
		}
	}

	/**
   * Route core request integration
   *
	 * @return array|bool|mixed
	 * @throws Exception
	 */
	private function request()
	{
		$availableAccess = self::checkClient();
		if($availableAccess === true){
			return $this->integratedRoute();
		}

		$errorCode = ErrorCodes::AccessExc;
		$errorCode[GlobalSystem::ExpErrorDesc] = $availableAccess;

		ErrorManager::throwException($errorCode);
	}

  /**
   * Integrated route for current translate request
   *
   * @return mixed
   * @throws ReflectionException
   */
  private function integratedRoute()
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $clientServerMD = $model->getClientServerInstance;

    $route = $routeMD->getRoute();
    $class = ucfirst($route);
    $object = new $class();
    $arguments = $routeMD->getRequest();
    $method = GlobalSystem::translatedRouteMethod();

    if($arguments){
      $classMethod = new ReflectionMethod($class, $method);
      $result = $classMethod->invokeArgs($object, $arguments);
    }else{
      $result = $object->$method();
    }

    $code = ($result) // If the result of the method is false, the created, updated or deleted actions are not considered and the code results are not established for these
      ? ErrorCodes::MetHodsCodesResponse[$clientServerMD->getMethod()]
      : ErrorCodes::MetHodsCodesResponse[GlobalSystem::ExpMethodGet];
    $routeMD->setCodeResponse($code);

    return [$route => [$routeMD->getMethod() => $result]];
  }

	/**
   * Route core auth integration
   *
	 * @return array
	 */
	private function auth()
	{
		$model = Model::getInstance();
    $userMD = $model->getUserInstance;
		$routeMD = $model->getRouteInstance;

		$name = $routeMD->getRequest(RequestRoute::ExpAuthName);
		$email = $routeMD->getRequest(RequestRoute::ExpAuthEmail);
		$externalId = $routeMD->getRequest(RequestRoute::ExpAuthId);
		$birthDay = $routeMD->getRequest(RequestRoute::ExpAuthBirthday);

		$user = $userMD->query([
		  User_MD::EMAIL => $email
    ])->registry();

		if(!$user->id){
			$userMD->insert([
				User_MD::NAME => $name,
				User_MD::EMAIL => $email,
				User_MD::BIRTHDAY => $birthDay,
				User_MD::EXTERNAL_ID => $externalId
			]);
		}

    $tokenData = [
      GlobalSystem::ExpNameTK => $name,
	    GlobalSystem::ExpAccessTK => self::checkUserAccess($email),
	    GlobalSystem::ExpEmailTK  => Encrypt::passwordEncode($email)
    ];

    return [$routeMD->getRoute() => Token::signIn($tokenData)];
	}

	/**
	 * Error core routing response to print custom message during execution
	 *
	 * @return mixed
	 */
	private function error()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		$errorRequest = $routeMD->getRequest();
    $executionStepNeedStart = ExecutionStep::stepErrorView();

    if($executionStepNeedStart){
      return $this->view();
    }

    return [$routeMD->getRoute() => $errorRequest];
	}

	/**
	 * Route core view integration
	 *
	 * @return string
	 */
	private function view()
	{
		$views = new View();
		return $views->routingView();
	}
}