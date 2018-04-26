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
	protected static function getData ($token, $request)
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
		return Token::signIn($data);
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
	protected function checkUserAccess ($user)
	{
		$users = array_values(CoreConfig::$rootUsers);
		return (!in_array($user, $users)) ? 0 : 1;
	}

	private static function routeNeedTK($route)
	{
		if(key_exists($route, RequestRoute::$routes))
		{
			$routeExecuting = RequestRoute::$routes[$route];
			return $routeExecuting[GlobalSystem::ExpRouteNeedTK];
		}
	}

	private function checkAllowIp ()
	{
	
	}
	
	private function checkAllowCountry ()
	{
	
	}
	
	private function checkAllowClient ()
	{
	
	}
	
	private function giveAccess ()
	{
	
	}
	
	private function getCountryByIp ()
	{
	
	}
	
	private function watchClient ()
	{
	
	}
	
	private function banClient ()
	{
	
	}
	
	private function washClient ()
	{
	
	}
}