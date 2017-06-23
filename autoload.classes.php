<?php

define('DIR', __DIR__);

class AutoLoad
{

  static public function LoadClasses($className, $directory = DIR) {

    if($directory == DIR){
      $dir = '';
    } else {
      $dir = $directory . '/';
    }

    $filenameClass = str_replace('\\', '/', DIR . '/' .  $dir . $className . ".class.php");

    if (file_exists($filenameClass)) {
      require($filenameClass);
      return true;
    }

    $found = false;

    $dir = scandir($directory);

    foreach($dir as $check) {

      if (is_dir($check)) {
        
        $ignoreDir = preg_match('[^\.|vendor]', $check);

        if(!$ignoreDir){

          $found = self::LoadClasses($className, $check);

          if ($found) {
            break;
          }
        }
      }
    }

    return $found;
  }
}

spl_autoload_register('AutoLoad::LoadClasses');