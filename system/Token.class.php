<?php

use Firebase\JWT\JWT;

class Token
{
	protected $auth;
	private static $aud = null;

  /**
   * Generate token using JWT for using request any data in the system
   *
   * @param array $data
   * @param int $expiredTime
   * @return string
   */
	public static function signIn(array $data = [], int $expiredTime = 0)
	{
    $model = Model::getInstance();
    $systemMD = $model->getSystemInstance;
    $secretKey = $systemMD->getSecretUniqueKey();

		$token = [
      GlobalSystem::ExpDataTK => $data,
      GlobalSystem::ExpAudTK => self::aud(),
      GlobalSystem::ExpSecretKeyTK => $secretKey[GlobalSystem::ExpSecretKeyTK]
    ];

		if($expiredTime){
		  $token[GlobalSystem::ExpExpTK] = time() + $expiredTime;
    }

		return JWT::encode($token, $secretKey[GlobalSystem::ExpSecretKeyTK]);
	}

  /**
   * Generate unique aud string
   *
   * @return string
   */
	public static function authString()
  {
    $model = Model::getInstance();
    $server = $model->getClientServerInstance;

    $aud = $server->getIp();
    $aud .= $server->getHostName();
    $aud .= $server->getUserAgent();

    return $aud;
  }

	/**
	 * Generate unique key identity host
	 *
	 * @return string
	 */
	public static function aud()
	{
		return Encrypt::oneWayHash(self::authString());
	}

	/**
	 * Check if token is valid from a user to de system
	 *
	 * @param $token
	 * @return string
	 */
	public static function check($token)
	{
		try {
      $model = Model::getInstance();
      $systemMD = $model->getSystemInstance;
      $secretKey = $systemMD->getSecretUniqueKey();

			$decode = JWT::decode($token, $secretKey[GlobalSystem::ExpSecretKeyTK],CoreConfig::ENCRYPT);

			if(!password_verify(self::authString(), $decode->aud)){
				throw new Exception('Invalid user logged in.');
			}

			return true;

		}catch(\Firebase\JWT\ExpiredException $e){
			return 'expired token';
		}catch(\Firebase\JWT\SignatureInvalidException $e){
			return 'Corrupted sign';
		}catch(\Exception $e){
			return 'Security error token';
		}
	}

	/**
	 * Decrypt user information in token
	 *
	 * @param $token
	 * @return mixed
	 */
	public static function getData($token)
	{
    $model = Model::getInstance();
    $systemMD = $model->getSystemInstance;
    $secretKey = $systemMD->getSecretUniqueKey();
		$decode = JWT::decode($token, $secretKey,CoreConfig::ENCRYPT);

		return $decode->data;
	}
}