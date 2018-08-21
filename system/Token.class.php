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
   * @return string
   */
	public static function signIn(array $data = [])
	{
    $secretKey = Cache::getDocument(GlobalSystem::CacheSecretKey);

		$token = [
      GlobalSystem::ExpDataTK => $data,
      GlobalSystem::ExpAudTK => self::aud(),
      GlobalSystem::ExpSecretKeyTK => $secretKey[GlobalSystem::ExpSecretKeyTK]
    ];

		$unixTime = 1;
    $expiredTime = 0;
		foreach(CoreConfig::TOKEN_EXPIRED_TIME as $timer){
		  if($timer){
		    $unixTime *= $timer;
		    $expiredTime = $unixTime;
      }
    }

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
      $secretKey = Cache::getDocument(GlobalSystem::CacheSecretKey);
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
    $secretKey = Cache::getDocument(GlobalSystem::CacheSecretKey);
		$decode = JWT::decode($token, $secretKey[GlobalSystem::ExpSecretKeyTK],CoreConfig::ENCRYPT);

		$data = [];
		foreach ($decode->data as $key => $value){
			$data[$key] = $value;
		}

		return $data;
	}
}