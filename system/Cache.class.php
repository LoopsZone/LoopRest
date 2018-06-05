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
	private static $format = '%d';
	private static $dateFormat = 'Y-m-d H:i:s';
	private static $expiredDocument = 'expired';
	private static $documentContent = 'document';

	/**
	 * Check expiration cache document
	 *
	 * @param $fileName
	 * @return bool
	 */
  private static function expiredTime($fileName, $document = false)
  {
  	if(!$document){
		  $document = json_decode(
			  file_get_contents($fileName),
			  true
		  );
	  }

	  if($document){
		  $dateCreatedDocument = filectime($fileName);
		  $expiredDocument = $document[self::$expiredDocument];
		  $createdDocumentDay = gmdate(self::$dateFormat, $dateCreatedDocument);
		  $documentCreated = new DateTime($createdDocumentDay);
		  $currentDate = new DateTime(date(self::$dateFormat));
		  $daysToRenew = $documentCreated->diff($currentDate);

		  if($daysToRenew->format(self::$format) > $expiredDocument){
			  unlink($fileName);

			  return true;
		  }
	  }

	  return false;
  }
  
  /**
   * Load new document in the cache path
   *
   * @param $name
   * @param $document
   * @return bool
   */
  public static function loadDocument($name, $document, $expiredDays = null)
  {
    if(!is_dir(CoreConfig::CACHE_PATH)){
      DirectoryManager::makeDir(CoreConfig::CACHE_PATH);
    }

    if($expiredDays !== false){
		    $expiredDays = ($expiredDays) ?  $expiredDays : CoreConfig::CACHE_EXPIRED_DAYS;
    }

    $document = [
    	self::$expiredDocument => $expiredDays,
	    self::$documentContent => $document
    ];

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
   * @return bool|CacheManager
   */
  public static function payload($document)
  {
    if(is_null(self::$singleton)){
    	$payload = self::getDocument($document);
    	if($payload){
		    self::$singleton = new CacheManager($document, $payload);

		    return self::$singleton;
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
  	$currentFile = CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE;
    if(file_exists($currentFile)){
	    $document = json_decode(
		    file_get_contents($currentFile),
		    true
	    );

	    $expiredDocument = self::expiredTime($currentFile, $document);

	    return (!$expiredDocument) ? $document[self::$documentContent] : false;
    }

    return false;
  }

  /**
   * Clear a document or all cache
   *
   * @param null $name
   * @return bool
   */
  public static function clearCache($name = null)
  {
    if(!$name){
      if(is_dir(CoreConfig::CACHE_PATH)){
        $files = glob(CoreConfig::CACHE_PATH . DS . '{,.}*', GLOB_BRACE);

        foreach($files as $file){
          unlink($file);
        }

        return true;
      }
    }else{
      $currentFile = CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE;
      if(file_exists($currentFile)){
        return unlink($currentFile);
      }
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