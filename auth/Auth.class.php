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
	protected static function signIn ($data)
	{
		return Token::signIn($data);
	}
	
	/**
	 *Check if token is valid for the system
	 *
	 * @return string
	 */
	protected static function checkClient ()
	{
		$model = Model::getInstance();
		$routeMD = $model->getRouteInstance();
		$authorization = $routeMD->getAuthorization();
		
		$tk = false;
		$route = $routeMD->getRoute();
		
		//TODO Add BlackList customers
		$needTK = self::routeNeedTK($route);
		
		if($needTK){
			$token = $routeMD->getRequest(GlobalSystem::ExpRequestToken);
			$availableTK = Token::check($token);
			
			if($availableTK === true){
				$tk = true;
			}
		}
		
		return ($authorization && $tk);
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
		$access = (!in_array($user, $users)) ? 0 : 1;
		
		return $access;
	}
	
	private static function routeNeedTK($route)
	{
		if(key_exists($route, RequestRoute::$routes))
		{
			$routeExecuting = RequestRoute::$routes[$route];
			return $routeExecuting[GlobalSystem::ExpRouteNeedTK];
		}
		
		//TODO General Exception add nd yours functions of notification
		throw new Exception('An error has occurred in system', 5);
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