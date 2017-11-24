<?php
define('DS', DIRECTORY_SEPARATOR);
define('DIRECTORY', __DIR__ . DS);
require_once 'system/config/CoreConfig.php';
require_once 'system/GlobalSystem.class.php';

/**
 * Class AutoLoad
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AutoLoad extends GlobalSystem
{
	/**
	 * @param $className
	 * @param string $directory
	 * @return bool
	 */
	static public function LoadClasses ($className, $directory = DIRECTORY)
	{
		$filePath = $directory . $className . CoreConfig::SUFFIX_FILE;
		
		if(file_exists($filePath)) {
			require_once($filePath);
			return true;
		}

		$found = false;
		$folders = scandir($directory);

		foreach($folders as $check) {
			if(is_dir($directory . $check)) {
				$ignoreDirectory = preg_match('[^\.' . self::$ignoreDirectories . ']', $check);
				if(!$ignoreDirectory) {
					$found = self::LoadClasses($className, $directory . $check . DS);
					if($found) {
						break;
					}
				}
			}
		}

		return $found;
	}
}

spl_autoload_register('AutoLoad::LoadClasses');