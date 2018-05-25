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

		$token = [
      'data' => $data,
		  'aud' => self::aud()
    ];

		if($expiredTime){
		  $token['exp'] = time() + $expiredTime;
    }

		return JWT::encode($token, $systemMD->getSecretUniqueKey());
	}

  /**
   * Generate unique auth string
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
	private static function aud()
	{
		return password_hash(self::authString(), PASSWORD_DEFAULT);
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
			$decode = JWT::decode($token, $systemMD->getSecretUniqueKey(),CoreConfig::ENCRYPT);

			//TODO password_verify
			if($decode->aud !== self::aud()){
				throw new Exception('Invalid user logged in.');
			}

			if(empty($token)){
				throw new Exception('Invalid token supplied.');
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
	public static function getData ($token)
	{
    $model = Model::getInstance();
    $systemMD = $model->getSystemInstance;
    $secretKey = $systemMD->getSecretUniqueKey();
		$decode = JWT::decode($token, $secretKey,CoreConfig::ENCRYPT);

		return $decode->data;
	}
}