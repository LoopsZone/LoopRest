<?php

class Startup
{
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
              return $this->postSecretKey($newKey);
            }
          }
        }
      }
    }

    return false;
  }

  /**
   * Set current system data base params
   *
   * @param $host
   * @param $user
   * @param $password
   * @param $engine
   * @return bool
   */
  public function postConnexionHost($host, $user, $password, $engine)
  {
    if(!Cache::getDocument(GlobalSystem::CacheConfigDB)){
      $config = [
        GlobalSystem::ExpHostDB => Encrypt::passwordEncode($host),
        GlobalSystem::ExpUserDB => Encrypt::passwordEncode($user),
        GlobalSystem::ExpEngineDB => Encrypt::passwordEncode($engine),
        GlobalSystem::ExpPasswordDB => Encrypt::passwordEncode($password)
      ];

      return Cache::loadDocument(GlobalSystem::CacheConfigDB, $config, false);
    }

    return false;
  }
}