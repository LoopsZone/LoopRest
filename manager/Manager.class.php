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
	protected function route()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		try {
			switch($routeMD->getTrigger()){
				case GlobalSystem::ExpAuthTrigger:
					return $this->auth();
				case GlobalSystem::ExpErrorTrigger:
					return $this->error();
				case GlobalSystem::ExpViewsTrigger:
					return $this->views();
				case GlobalSystem::ExpRequestTrigger:
					return $this->request();
				default: throw new Exception('Action selected no valid', 2);
			}
		}catch(Exception $error){
			GlobalSystem::onErrorRoute($error);
			return $this->error();
		}
	}

	/**
	 * @param $tk
	 * @param $request
	 *
	 * @return string|array
	 */
	private function request()
	{
		$availableAccess = self::checkClient();

		if($availableAccess){
			$model = Model::getInstance();
			$action = $this->requestAction();
			$routeMD = $model->getRouteInstance;
			$request = $routeMD->getRequest();
			$token = $routeMD->getRequest(GlobalSystem::ExpRequestToken);

			if($action){
				return $action;
			}

			return self::getData($token, $request);
		}

		throw new Exception($availableAccess, 4);
	}

	/**
	 * Active action in request and execute this
	 *
	 * @return array|bool
	 * @throws Exception
	 */
	private function requestAction()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;

		switch($routeMD->getAction()){
			case GlobalSystem::ExpMethodPost:
				return $this->post();
			case GlobalSystem::ExpMethodPut:
				return $this->update();
			case GlobalSystem::ExpMethodDelete:
				return $this->delete();
			default: return false;
		}
	}

	private function post()
	{
	
	}

	private function update ()
	{
	
	}

	private function delete ()
	{
	
	}

	/**
	 * @return string
	 */
	private function auth ()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$authorization = $routeMD->getAuthorization();

		$availableAccess = self::checkClient();
		if($availableAccess){
			$routeMD->setResponseObject(false);
			$userEmail = $routeMD->getRequest(GlobalSystem::ExpAuthEmail);
			$userAccess = self::checkUserAccess($userEmail);

			$isUser = $this->getUser($userEmail);

			if(!$isUser){
				$this->newUser($routeMD->getRequest());
			}

			$tokenData = [
				'access' => $userAccess,
				'id' => $routeMD->getRequest(RequestRoute::ExpAuthId),
				'name' => $routeMD->getRequest(RequestRoute::ExpAuthName)
			];

			return self::signIn($tokenData);
		}

		throw new Exception($availableAccess, 4);
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

		return $routeMD->getRequest(GlobalSystem::ExpErrorDesc);
	}

	/**
	 * Return any html view rendering component
	 *
	 * @return string
	 */
	private function views()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$routeMD->setResponseObject(false);
		$views = new Views($routeMD->getRequest(GlobalSystem::ExpViews));

		return $views->routingView();
	}

	protected function putSystemData ()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$routeMD->setResponseObject();

		return true;
	}

	protected function dismissSystemData ()
	{
	
	}

	protected function updateSystemData ()
	{
	
	}
}