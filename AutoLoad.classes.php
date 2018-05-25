<?php
define('DS', DIRECTORY_SEPARATOR);
define('DIRECTORY', __DIR__ . DS);

require_once 'vendor/autoload.php';
require_once 'system/Cache.class.php';
require_once 'system/GlobalSystem.class.php';
require_once 'system/DirectoryManager.class.php';
require_once 'system/config/CoreConfig.class.php';

/**
 * Class AutoLoad
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AutoLoad
{
	const CacheDocSystemPath = 'SYSTEM_PATH';

	/**
	 * Load the class in the current search
	 *
	 * @param $className
	 * @return bool
	 */
	public static function loadClass($className)
	{
		$systemPath = Cache::getDocument(self::CacheDocSystemPath);

		if($systemPath){
			if(key_exists($className, $systemPath)){
				if(file_exists($systemPath[$className])){
					require($systemPath[$className]);
					return true;
				}
			}
		}

		return self::findClass($className);
	}

	/**
	 * Search for the class in the file system and load it into the cache
	 * 
	 * @param $className
	 * @param string $directory
	 * @return bool
	 */
	private static function findClass($className, $directory = DIRECTORY)
	{
		$filePath = $directory . $className . CoreConfig::SUFFIX_FILE;

		if(file_exists($filePath)){
			$systemPath = Cache::getDocument(self::CacheDocSystemPath);
			$newSystemPath = ($systemPath) ? array_merge($systemPath, [$className => $filePath]) : [$className => $filePath];

			$charged = Cache::loadDocument(self::CacheDocSystemPath, $newSystemPath);

			return(
				$charged &&
				require($filePath)
			);
		}

		$found = false;
		$folders = scandir($directory);

		foreach($folders as $check){
			if(is_dir($directory . $check)){
				$ignoreDirectory = preg_match('[^\.' . GlobalSystem::ignoreDirectories() . ']', $check);
				if(!$ignoreDirectory){
					$found = self::findClass($className, $directory . $check . DS);
					if($found){
						break;
					}
				}
			}
		}

		return $found;
	}
}

spl_autoload_register('AutoLoad::loadClass');
register_shutdown_function(['ErrorManager', 'onErrorRoute']);