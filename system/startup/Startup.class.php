<?php

class Startup
{
  /**
   * Set secret unique key in system
   *
   * @param $key
   * @return bool
   */
  public function secretKey($key)
  {
    $model = Model::getInstance();
    $systemMD = $model->getSystemInstance;
    $keyExist = Cache::getDocument(GlobalSystem::CacheSecretKey);

    if(!$keyExist){
      $systemMD->setSecretUniqueKey(Encrypt::oneWayHash($key, Encrypt::DEFAULT_OWNER_COST));

      $secretUniqueKey = Token::signIn();
      return Cache::loadDocument(GlobalSystem::CacheSecretKey, $secretUniqueKey, false);
    }

    return false;
  }

  /**
   * Renew secret unique key
   *
   * @param $key
   * @param $newKey
   * @return bool
   */
  public function resetKey($key, $newKey)
  {
    $keyExist = Cache::getDocument(GlobalSystem::CacheSecretKey);

    if($keyExist){
      $tokenData = explode('.', $keyExist);
      $payLoad = $tokenData[1];
      $data = json_decode(base64_decode($payLoad), true);
      $clientOwner = password_verify(Token::authString(), $data['auth']);

      if($clientOwner && password_verify($key, $data['secretKey'])){
        if(Cache::clearCache(GlobalSystem::CacheSecretKey)){
          return $this->secretKey($newKey);
        }
      }
    }

    return false;
  }

  /**
   *
   */
  public function connexionHost($host, $user, $password, $engine)
  {
    return $host;
  }
}