<?php

class Encrypt
{
  const IV = '0000000000000000';
  const ENCRYPT_METHOD = 'aes-256-cfb';

  const DEFAULT_CLIENT_COST = 8;// 0.01 s
  const ATTENTIVE_CLIENT_COST = 12;// 0.25 s
  const MEDIUM_CLIENT_COST = 13;// 0.5 s
  const HIGH_CLIENT_COST = 14;// 1 s
  const WARNING_CLIENT_COST = 15;// 2 s
  const DEFAULT_OWNER_COST = 16;// 4 s
  const ATTENTIVE_OWNER_COST = 18;// 16 s
  const MEDIUM_OWNER_COST = 19;// 32 s
  const HIGH_OWNER_COST = 20;// 64 s
  const WARNING_OWNER_COST = 21;// 265 s

  /**
   * Gen
   *
   * @param array $cost
   * @return bool|string
   */
  private static function genSalt($cost = [])
  {
    return password_hash(Cache::getDocument(GlobalSystem::CacheSecretKey), PASSWORD_BCRYPT, $cost);
  }

  /**
   * @param $password
   * @return string
   */
  public static function oneWayHash($password)
  {
    return crypt($password , self::genSalt(self::ATTENTIVE_CLIENT_COST));
  }

  /**
   * @param $text
   * @param array $cost
   * @return string
   */
  public static function passwordEncode($text)
  {
    $key = Cache::getDocument(GlobalSystem::CacheSecretKey);

    $encrypted = base64_encode(
      openssl_encrypt(
        $text,
        self::ENCRYPT_METHOD,
        $key,
        OPENSSL_ZERO_PADDING,
        self::IV
      )
    );

    return $encrypted;
  }

  /**
   * @param $hash
   * @param array $cost
   * @return string
   */
  public static  function passwordDecode($hash)
  {
    $key = Cache::getDocument(GlobalSystem::CacheSecretKey);

    $decrypted = openssl_decrypt(
      base64_decode($hash),
      self::ENCRYPT_METHOD,
      $key,
      OPENSSL_ZERO_PADDING,
      self::IV
    );

    return $decrypted;
  }
}