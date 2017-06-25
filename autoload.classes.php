<?php

define('DIRECTORY', __DIR__ . '/');
require_once DIRECTORY . 'system/CoreConfig.php';
require_once DIRECTORY . 'system/globalSystem.class.php';

/**
 * Class AutoLoad
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AutoLoad
{
  /**
   * @param $className
   * @param string $directory
   * @return bool
   */
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

    $folders = scandir($directory);

    foreach ($folders as $check) {

      if (is_dir($check)) {

        $ignoreDirectory = preg_match('[^\.' . globalSystem::$ignoreDirectories . ']', $check);

        if (!$ignoreDirectory) {

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