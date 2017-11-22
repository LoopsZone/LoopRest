<?php

/**
 * Class Auth
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Auth extends AccessDB
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
		$token = $routeMD->getRequest(GlobalSystem::ExpRequestToken);
		
		return Token::check($token);
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