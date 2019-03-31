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