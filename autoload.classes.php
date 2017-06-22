<?php

define('DIR', __DIR__);

class AutoLoader
{

  static public function LoadClasses($className, $directory = DIR) {

    if($directory == DIR){
      $dir = '';
    } else {
      $dir = $directory . '/';
    }

    $filenameClass = str_replace('\\', '/', DIR . '/' .  $dir . $className . ".class.php");

    if (file_exists($filenameClass))
    {
      require_once($filenameClass);
      return true;
    }

    $dir = scandir($directory);

    foreach($dir as $check) {

      if (is_dir($check)) {
        
        $ignoreDir = preg_match('[^\.|vendor]', $check);

        if(!$ignoreDir){
          self::LoadClasses($className, $check);
        }
      }
    }

    return false;
  }
}

spl_autoload_register('AutoLoader::LoadClasses');