<?php

class DirectoryManager
{
  const OPEN_FILE = '0200';
  const CLOSE_FILE = '0400';

  /**
   * Make new directory
   *
   * @param $directory
   * @return bool
   */
  public static function makeDir($directory)
  {
    if(!file_exists($directory)){
      self::prepareFile($directory);
      $success = mkdir($directory);
      self::prepareFile($directory, false);

      return $success;
    }

    return false;
  }

  /**
   * Open or close the file to write
   *
   * @param $directory
   * @param bool $open
   * @return bool
   */
  public static function prepareFile($directory, $open = true)
  {
    $routeToPath = explode(DS, $directory);
    $exposition = ($open === true) ? self::OPEN_FILE : self::CLOSE_FILE;

    $routeCurrentPath = '';
    foreach($routeToPath as $currentPath){
      $routeCurrentPath .= $currentPath . DS;

      if(is_dir($routeCurrentPath)){
        chown($routeCurrentPath, CoreConfig::USER_DIRECTORY);

        return chmod($routeCurrentPath, intval($exposition));
      }
    }

    return false;
  }
}