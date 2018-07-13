<?php

/**
 * Class Manager
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Manager extends Auth
{
	/**
	 * Format response to response
	 */
	public function response()
	{
		$result = $this->route();
		new Response($result);
	}

	/**
	 * @return array|mixed|string
	 */
	private function route()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		try {
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

    $code = ErrorCodes::MetHodsCodesResponse[$clientServerMD->getMethod()];
    $routeMD->setCodeResponse($code);

    return [$route => [$routeMD->getMethod() => $result]];
  }

	/**
	 * @return array
	 */
	private function auth()
	{
		$model = Model::getInstance();
		$model->getUserModelInstance;
		$routeMD = $model->getRouteInstance;

		$name = $routeMD->getRequest(RequestRoute::ExpAuthName);
		$email = $routeMD->getRequest(RequestRoute::ExpAuthEmail);
		$externalId = $routeMD->getRequest(RequestRoute::ExpAuthId);
		$birthDay = $routeMD->getRequest(RequestRoute::ExpAuthBirthday);

		$connexionDB = new AccessDB();
		$user = $connexionDB->getTableValue(User_MD::class, [User_MD::EMAIL => $email]);

		if(!$user){
			$connexionDB->insert(User_MD::class, [
				User_MD::NAME => $name,
				User_MD::EMAIL => $email,
				User_MD::BIRTHDAY => $birthDay,
				User_MD::EXTERNAL_ID => $externalId
			]);
		}

		$userAccess = self::checkUserAccess($email);

    $tokenData = [
      GlobalSystem::ExpNameTK => $name,
	    GlobalSystem::ExpAccessTK  => $userAccess,
	    GlobalSystem::ExpEmailTK  => Encrypt::passwordEncode($email)
    ];

    return [$routeMD->getRoute() => self::signIn($tokenData)];
	}

	/**
	 * Error routing response to print custom message during execution
	 *
	 * @return mixed
	 */
	private function error()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		$routeMD->setResponseObject(true);
		$errorRequest = $routeMD->getRequest();
    $executionStepNeedStart = ExecutionStep::stepErrorView();

    if($executionStepNeedStart){
      return $this->view();
    }

    return [$routeMD->getRoute() => $errorRequest];
	}

	/**
	 * Return any html view rendering component
	 *
	 * @return string
	 */
	private function view()
	{
		$views = new View();
		return $views->routingView();
	}
}