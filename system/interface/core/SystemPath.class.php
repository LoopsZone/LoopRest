<?php

/**
 * Class SystemPath
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class SystemPath
{
  const CacheDocSystemPath = 'SYSTEM_PATH';

  /**
   * Load the class in the current search
   *
   * @param $className
   * @param string $suffixFile
   * @return bool
   */
  public static function loadFile($className, $directory = DIRECTORY, $suffixFile = CoreConfig::SUFFIX_FILE)
  {
    $systemPath = Cache::getDocument(self::CacheDocSystemPath);

    if($systemPath){
      if(key_exists($className, $systemPath)){
        if(file_exists($systemPath[$className])){
          return $systemPath[$className];
        }
      }
    }

    return self::findFile($className, $suffixFile, $directory);
  }

  /**
   * Search for the class in the file system and load it into the cache
   *
   * @param $className
   * @param $suffixFile
   * @param string $directory
   * @return bool
   */
  private static function findFile($className, $suffixFile, $directory)
  {
    $filePath = $directory . $className . $suffixFile;

    if(file_exists($filePath)){
      $systemPath = Cache::getDocument(self::CacheDocSystemPath);
      $newSystemPath = ($systemPath) ? array_merge($systemPath, [$className => $filePath]) : [$className => $filePath];
      Cache::loadDocument(self::CacheDocSystemPath, $newSystemPath);

      return $filePath;
    }

    $found = false;
    $folders = scandir($directory);

    foreach($folders as $check){
      if(is_dir($directory . $check)){
        $ignoreDirectory = preg_match('[^\.' . self::ignoreDirectories() . ']', $check);
        if(!$ignoreDirectory){
          $found = self::findFile($className, $suffixFile,$directory . $check . DS);
          if($found){
            break;
          }
        }
      }
    }

    return $found;
  }

  /**
   * Returns the regex string of the ignored directories
   *
   * @return string
   */
  private static function ignoreDirectories()
  {
    $folders = GlobalSystem::DirectoriesToIgnore;

    $ignoreDirectories = '';
    foreach($folders as $ignore){
      $ignoreDirectories .= '|' . $ignore;
    }

    return $ignoreDirectories;
  }
}