<?php

define('DIRECTORY', __DIR__ . '/');
require_once DIRECTORY . 'system/globalSystem.class.php';

class AutoLoad
{
  public static $ignore = null;

  static public function LoadClasses($className, $directory = DIRECTORY)
  {

    if ($directory == DIRECTORY) {
      $folder = '';
    } else {
      $folder = $directory . '/';
    }

    $filePath = str_replace('\\', '/', DIRECTORY . $folder . $className . '.class.php');

    if (file_exists($filePath)) {
      require($filePath);
      return true;
    }

    $found = false;

    $folder = scandir($directory);

    foreach ($folder as $check) {

      if (is_dir($check)) {

        $ignoreDir = preg_match('[^\.' . globalSystem::$ignoreDirectories . ']', $check);

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