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
    $keyExist = Cache::getDocument(GlobalSystem::CacheSecretKey);

    if($keyExist){
      $tokenData = explode('.', $keyExist);
      $payLoad = $tokenData[1];
      $data = json_decode(base64_decode($payLoad), true);
      $clientOwner = password_verify(Token::authString(), $data['aud']);

      if(!$clientOwner){
        return false;
      }
    }

    $model = Model::getInstance();
    $systemMD = $model->getSystemInstance;
    $systemMD->setSecretUniqueKey(password_hash($key, PASSWORD_DEFAULT, ['cost' => Encrypt::WARNING_OWNER_COST]));

    $secretUniqueKey = Token::signIn();
    return Cache::loadDocument(GlobalSystem::CacheSecretKey, $secretUniqueKey, false);
  }

  /**
   *
   */
  public function connexionHost($host, $user, $password, $engine)
  {
    return $host;
  }
}