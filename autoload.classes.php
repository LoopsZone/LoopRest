<?php

define('DIRECTORY', str_replace('\\', '/', __DIR__ . '/'));
require_once DIRECTORY . 'system/config/CoreConfig.php';
require_once DIRECTORY . 'system/GlobalSystem.class.php';

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

    $directory = str_replace('\\', '/', $directory);

    if ($directory == DIRECTORY) {

      $filePath = DIRECTORY . $className;
    } else {
      $filePath = $directory . $className;
    }

    if (file_exists($filePath . '.class.php')) {
      $filePath .= '.class.php';
      require($filePath);
      return true;
    }

    $found = false;

    $folders = scandir($directory);

    foreach ($folders as $check) {

      if (is_dir($directory . $check)) {

        $ignoreDirectory = preg_match('[^\.' . GlobalSystem::$ignoreDirectories . ']', $check);

        if (!$ignoreDirectory) {

          $found = self::LoadClasses($className, $directory . $check . '/');

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