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
   * Gen salt with system secret key
   *
   * @param array $cost
   * @return bool|string
   */
  public static function genSalt($cost = [])
  {
    return password_hash(Cache::getDocument(GlobalSystem::CacheSecretKey), PASSWORD_DEFAULT, $cost);
  }

  /**
   * Generate hash one way
   *
   * @param $string
   * @param array $cost
   * @return bool|string
   */
  public static function oneWayHash($string, $cost = self::ATTENTIVE_CLIENT_COST)
  {
    return password_hash($string,PASSWORD_DEFAULT, ['cost' => $cost]);
  }

  /**
   * Generate hash with system salt
   *
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
        $key[GlobalSystem::ExpSecretKeyTK],
        OPENSSL_ZERO_PADDING,
        self::IV
      )
    );

    return $encrypted;
  }

  /**
   * Decrypt hast with system salt
   *
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
      $key[GlobalSystem::ExpSecretKeyTK],
      OPENSSL_ZERO_PADDING,
      self::IV
    );

    return $decrypted;
  }
}