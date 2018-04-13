<?php

class CacheManager
{
  private static $payload;
  private static $count = 0;
  private static $currentBatch;
  private static $routePayload = [];
  private static $payloadToUpdate =[];

  function __construct($document, $payload)
  {
    if(is_null(self::$payload)){
      self::$payload = $payload;
    }
  }

  public function getBatch($name)
  {
    $payload = (is_null(self::$currentBatch)) ? self::$payload : self::$currentBatch;

    if(key_exists($name, $payload)){
      array_push(self::$routePayload, $name);

      return self::$currentBatch = $payload->$name;
    }

    return false;
  }

  public function setBatch($newBatch, $batch = array())
  {
    $batch = (self::$count) ? $batch : self::$payload;
    if(key_exists(self::$routePayload[self::$count], $batch)){
      $array = self::setBatch($newBatch, $batch[self::$routePayload[self::$count]]);

      if(count(self::$routePayload) == self::$count){
        
      }
      self::$count++;
    }
  }
}

class Cache
{
  private static $singleton;

  public static function loadDocument($name, $document)
  {
    if(!is_dir(CoreConfig::CACHE_PATH)){
      DirectoryManager::makeDir(CoreConfig::CACHE_PATH);
    }

    return(
      @file_put_contents(
        CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE,
        json_encode($document, JSON_PRETTY_PRINT)
      )
    );
  }

  public static function payload($document)
  {
    if(is_null(self::$singleton)){
      if(file_exists(CoreConfig::CACHE_PATH . DS . $document . CoreConfig::CACHE_SUFFIX_FILE)){
        $payload = json_decode(
          file_get_contents(CoreConfig::CACHE_PATH . DS . $document . CoreConfig::CACHE_SUFFIX_FILE)
        );

        self::$singleton = new CacheManager($document, $payload);
      }
    }

    return self::$singleton;
  }

  public static function getDocument($name)
  {
    if(file_exists(CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE)){
      return json_decode(
        file_get_contents(CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE)
      );
    }

    return false;
  }

  public function closePayload(){
    self::$singleton = null;
  }
}