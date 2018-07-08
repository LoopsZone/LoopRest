<?php

/**
 * Class Auth
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Auth
{
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
		$loginMD = $model->getLoginInstance;
		$clientServerMD = $model->getClientServerInstance;

		//TODO Add BlackList customers

		if(self::routeNeedTK()){
			$token = $clientServerMD->getHeader(GlobalSystem::ExpHeaderAuth);
			$availableTK = Token::check($token);

			if($availableTK){
				$userData = Token::getData($token);
				$email = Encrypt::passwordDecode($userData[GlobalSystem::ExpEmailTK]);

				$connectionDB = new AccessDB();
				$userData = $connectionDB->getTableValue(User_MD::class, [User_MD::EMAIL => $email])[0];

				$loginMD->setId($userData[User_MD::ID]);
				$loginMD->setName($userData[User_MD::NAME]);
				$loginMD->setEmail($userData[User_MD::EMAIL]);
				$loginMD->setBirthday($userData[User_MD::BIRTHDAY]);
				$loginMD->setExternalId($userData[User_MD::EXTERNAL_ID]);
			}

			return $availableTK;
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
	private static function routeNeedTK()
	{
	  $model = Model::getInstance();
	  $routeMD = $model->getRouteInstance;
	  $route = $routeMD->getRoute();

	  if(!in_array($route, GlobalSystem::PublicRoutes)){
      $route = GlobalSystem::translateSystemRoute();

      if(key_exists($route, RequestRoute::$routes))
      {
        $routeExecuting = RequestRoute::$routes[$route];
        return $routeExecuting[GlobalSystem::ExpRouteNeedTK];
      }
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