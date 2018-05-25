<?php

/**
 * Class Auth
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Auth extends Access
{
	/**
	 * Get data from request to database
	 *
	 * @param $token
	 * @param $request
	 * @return mixed
	 */
	protected static function getData($token, $request)
	{
		$user = Token::getData($token);
		return $user;//$this->auth->search($request.'/'.$user->id,TRUE);
	}

	/**
	 * Return token to request any data in system
	 *
	 * @param $data
	 * @return string
	 */
	protected static function signIn($data)
	{
	  $expired = 60 * 60;
		return Token::signIn($data, $expired);
	}

	/**
	 *Check if token is valid for the system
	 *
	 * @return string
	 */
	protected static function checkClient()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$route = $routeMD->getRoute();
		$needTK = self::routeNeedTK($route);

		//TODO Add BlackList customers

		if($needTK){
			$token = $routeMD->getRequest(GlobalSystem::ExpRequestToken);
			$availableTK = Token::check($token);

			return ($availableTK === true) ? true : $availableTK;
		}

		return true;
	}

	/**
	 * Check and return access in system for user
	 *
	 * @param $user
	 * @return int
	 */
	protected function checkUserAccess($user)
	{
		$users = array_values(CoreConfig::$rootUsers);
		return (!in_array($user, $users)) ? 0 : 1;
	}

  /**
   * Check if route need token
   *
   * @param $route
   * @return bool
   */
	private static function routeNeedTK($route)
	{
		if(key_exists($route, RequestRoute::$routes))
		{
			$routeExecuting = RequestRoute::$routes[$route];
			return $routeExecuting[GlobalSystem::ExpRouteNeedTK];
		}

		return false;
	}

	private function checkAllowIp()
	{
	
	}

	private function checkAllowCountry()
	{
	
	}

	private function checkAllowClient()
	{
	
	}

	/**
	 * Give access system level
	 */
	protected function giveAccess()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance;
		$clientServerMD = $model->getClientServerInstance;
		$authHeader = $clientServerMD->getHeader(GlobalSystem::ExpHeaderAuth);
		$auth = (!$authHeader) ? 0 : 1;/*Zero value get user access to principal system and one value get structure merchant access*/

		$routeMD->setAuthorization($auth);
	}
	
	private function getCountryByIp()
	{
	
	}

	private function watchClient()
	{
	
	}
	
	private function banClient()
	{
	
	}

	private function washClient()
	{
	
	}
}