<?php

/**
 * Class CacheManager
 *
 * Manage documents cache in a controlled load
 */
class CacheManager
{
  private static $payload;
  private static $document;
  private static $currentBatch;
  private static $routePayload = [];

  function __construct($document, $payload)
  {
    self::$document = $document;
    if(is_null(self::$payload)){
      self::$payload = $payload;
    }
  }

  /**
   * Find the batch in the current document and load it to manipulate it
   *
   * @param $name
   * @return bool
   */
  public function getBatch($name)
  {
    $payload = (is_null(self::$currentBatch)) ? self::$payload : self::$currentBatch;

    if(key_exists($name, $payload)){
      array_push(self::$routePayload, $name);

      return self::$currentBatch = $payload[$name];
    }

    return false;
  }

  /**
   * Change the value in the current loaded batch
   *
   * @param $newBatch
   * @param array $batch
   * @return array|bool
   */
  public function setBatch($newBatch, $batch = array())
  {
    $batch = ($batch) ? $batch : self::$payload;
    $currentBatch = current(self::$routePayload);

    if(key_exists($currentBatch, $batch)){
      $currentPayload = $batch[$currentBatch];
      $mergedEnded = next(self::$routePayload);

      $arrayToMerge = ($mergedEnded) ? [
        $currentBatch => self::setBatch($newBatch, $currentPayload)
      ] : [$currentBatch => $newBatch];

      $mergeArray = array_merge($batch, $arrayToMerge);
      if($currentBatch == self::$routePayload[0]){
        return Cache::loadDocument(self::$document, array_merge($batch, $mergeArray));
      }

      return $mergeArray;
    }

    return false;
  }
}

/**
 * Class Cache
 *
 * Manage documents cache
 */
class Cache
{
  private static $singleton;

  /**
   * Load new document in the cache path
   *
   * @param $name
   * @param $document
   * @return bool
   */
  public static function loadDocument($name, $document)
  {
    if(!is_dir(CoreConfig::CACHE_PATH)){
      DirectoryManager::makeDir(CoreConfig::CACHE_PATH);
    }

    return(
      @file_put_contents(
        CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE,
        json_encode($document, JSON_PRETTY_PRINT)
      ) ? true : false
    );
  }

  /**
   * Load the current document to work with it
   * 
   * @param $document
   * @return bool
   */
  public static function payload($document)
  {
    if(is_null(self::$singleton)){
      if(file_exists(CoreConfig::CACHE_PATH . DS . $document . CoreConfig::CACHE_SUFFIX_FILE)){
        $payload = json_decode(
          file_get_contents(CoreConfig::CACHE_PATH . DS . $document . CoreConfig::CACHE_SUFFIX_FILE), true
        );

        self::$singleton = new CacheManager($document, $payload);
      }

      return false;
    }

    return self::$singleton;
  }

  /**
   * Get document with the current name
   *
   * @param $name
   * @return bool|mixed
   */
  public static function getDocument($name)
  {
    if(file_exists(CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE)){
      return json_decode(
        file_get_contents(CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE),
        true
      );
    }

    return false;
  }

  /**
   * Close current payload
   */
  public static function closePayload()
  {
    self::$singleton = null;
  }
}