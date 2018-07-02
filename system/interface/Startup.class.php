<?php

class Startup
{
  public function secretKey(){
    return 'test';
  }

  /**
   * Set secret unique key in system
   *
   * @param $key
   * @return bool
   */
  public function postSecretKey($key)
  {
    $model = Model::getInstance();
    $systemMD = $model->getSystemInstance;
    $keyExist = Cache::getDocument(GlobalSystem::CacheSecretKey);

    if(!$keyExist){
      $secretUniqueKey = [
        GlobalSystem::ExpAudTK => Token::aud(),
        GlobalSystem::ExpSecretKeyTK => Encrypt::oneWayHash($key, Encrypt::ATTENTIVE_OWNER_COST)
      ];

      $systemMD->setSecretUniqueKey($secretUniqueKey[GlobalSystem::ExpSecretKeyTK]);
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
  public function putSecretKey($key, $newKey)
  {
    $secretKey = Cache::getDocument(GlobalSystem::CacheSecretKey);

    if($secretKey){
      if(key_exists(GlobalSystem::ExpAudTK, $secretKey)){
        if(key_exists(GlobalSystem::ExpSecretKeyTK, $secretKey)){
          $clientOwner = password_verify(Token::authString(), $secretKey[GlobalSystem::ExpAudTK]);

          if($clientOwner && password_verify($key, $secretKey[GlobalSystem::ExpSecretKeyTK])){
            if(Cache::clearCache(GlobalSystem::CacheSecretKey)){
              return $this->secretKey($newKey);
            }
          }
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