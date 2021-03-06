<?php

require_once 'CacheManager.class.php';

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
     * @param bool $document
     * @return bool
     * @throws Exception
     */
    private static function expiredTime ($fileName, $document = false)
    {
        if(!$document) {
            $document = json_decode(file_get_contents($fileName), true);
        }

        if($document) {
            $dateCreatedDocument = filectime($fileName);
            $expiredDocument = $document[self::$expiredDocument];

            if($expiredDocument) {
                $createdDocumentDay = gmdate(self::$dateFormat, $dateCreatedDocument);
                $documentCreated = new DateTime($createdDocumentDay);
                $currentDate = new DateTime(date(self::$dateFormat));
                $daysToRenew = $documentCreated->diff($currentDate);
                
                if($daysToRenew->format(self::$format) > $expiredDocument) {
                    unlink($fileName);
                    return true;
                }
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
    public static function loadDocument ($name, $document, $expiredDays = null)
    {
        FileSystem::makeDirectory(CoreConfig::CACHE_PATH);
        
        if($expiredDays !== false) {
            $expiredDays = ($expiredDays) ? $expiredDays : CoreConfig::CACHE_EXPIRED_DAYS;
        }
        
        $document = [
            self::$expiredDocument => $expiredDays,
            self::$documentContent => $document
        ];
        
        $filename = CoreConfig::CACHE_PATH . DIRECTORY_SEPARATOR . $name . CoreConfig::CACHE_SUFFIX_FILE;
        
        if(FileSystem::isFile($filename)) {
            $success = FileSystem::put($filename, json_encode($document, JSON_PRETTY_PRINT));
        } else {
            $success = FileSystem::append($filename, json_encode($document, JSON_PRETTY_PRINT));
        }
        
        return (bool)$success;
    }
    
    /**
     * Load the current document to work with it
     *
     * @param $document
     * @return bool|CacheManager
     */
    public static function payload ($document)
    {
        if(is_null(self::$singleton)) {
            $payload = self::getDocument($document);
            if($payload) {
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
    public static function getDocument ($name)
    {
        $currentFile = CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE;
        if(file_exists($currentFile)) {
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
    public static function clearCache ($name = null)
    {
        if(!$name) {
            if(is_dir(CoreConfig::CACHE_PATH)) {
                $files = glob(CoreConfig::CACHE_PATH . DS . '{,.}*', GLOB_BRACE);
                
                foreach($files as $file) {
                    unlink($file);
                }
                
                return true;
            }
        } else {
            $currentFile = CoreConfig::CACHE_PATH . DS . $name . CoreConfig::CACHE_SUFFIX_FILE;
            if(file_exists($currentFile)) {
                return unlink($currentFile);
            }
        }
        
        return false;
    }
    
    /**
     * Close current payload
     */
    public static function closePayload ()
    {
        self::$singleton = null;
    }
}
