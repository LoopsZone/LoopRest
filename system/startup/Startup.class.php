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
    $systemMD->setSecretUniqueKey(password_hash($key, PASSWORD_DEFAULT));

    $secretUniqueKey = Token::signIn();

    Cache::loadDocument(GlobalSystem::CacheSecretKey, $secretUniqueKey, false);

    return true;
  }
}