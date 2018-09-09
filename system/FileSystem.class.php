<?php

class FileSystem
{
	/**
	 * Determine if a file or directory exists.
	 *
	 * @param  string  $path
	 * @return bool
	 */
	public static function exists($path)
	{
		return file_exists($path);
	}

	/**
	 * Get the contents of a file.
	 *
	 * @param $path
	 * @param bool $lock
	 * @return bool|string
	 * @throws Exception
	 */
	public static function get($path, $lock = false)
	{
		if(self::isFile($path)){
			return $lock ? self::sharedGet($path) : file_get_contents($path);
		}

		return ErrorManager::throwException();
	}

	/**
	 * Get contents of a file with shared access.
	 *
	 * @param  string  $path
	 * @return string
	 */
	public static function sharedGet($path)
	{
		$contents = '';
		$handle = fopen($path, 'rb');

		if($handle){
			try{
				if(flock($handle, LOCK_SH)){
					clearstatcache(true, $path);
					$contents = fread($handle, self::size($path) ?: 1);
					flock($handle, LOCK_UN);
				}
			}finally{
				fclose($handle);
			}
		}

		return $contents;
	}

	/**
	 * Get the MD5 hash of the file at the given path.
	 *
	 * @param  string  $path
	 * @return string
	 */
	public static function hash($path)
	{
		return md5_file($path);
	}

	/**
	 * Write the contents of a file.
	 *
	 * @param  string  $path
	 * @param  string  $contents
	 * @param  bool  $lock
	 * @return int
	 */
	public static function put($path, $contents, $lock = false)
	{
		return file_put_contents($path, $contents, $lock ? LOCK_EX : 0);
	}

	/**
	 * Prepend to a file.
	 *
	 * @param $path
	 * @param $data
	 * @return int
	 * @throws Exception
	 */
	public static function prepend($path, $data)
	{
		if(self::exists($path)){
			return self::put($path, $data . self::get($path));
		}

		return self::put($path, $data);
	}

	/**
	 * Append to a file.
	 *
	 * @param  string  $path
	 * @param  string  $data
	 * @return int
	 */
	public static function append($path, $data)
	{
		return file_put_contents($path, $data, FILE_APPEND);
	}

	/**
	 * Get or set UNIX mode of a file or directory.
	 *
	 * @param  string  $path
	 * @param  int  $mode
	 * @return mixed
	 */
	public static function chmod($path, $mode = null)
	{
		if($mode){
			return chmod($path, $mode);
		}

		return substr(sprintf('%o', fileperms($path)), -4);
	}

	/**
	 * Delete the file at a given path.
	 *
	 * @param  string|array  $paths
	 * @return bool
	 */
	public static function delete($paths)
	{
		$paths = is_array($paths) ? $paths : func_get_args();
		$success = true;

		foreach ($paths as $path){
			try{
				if(! @unlink($path)){
					$success = false;
				}
			}catch(Exception $e){
				$success = false;
			}
		}

		return $success;
	}

	/**
	 * Move a file to a new location.
	 *
	 * @param  string  $path
	 * @param  string  $target
	 * @return bool
	 */
	public static function move($path, $target)
	{
		return rename($path, $target);
	}

	/**
	 * Copy a file to a new location.
	 *
	 * @param  string  $path
	 * @param  string  $target
	 * @return bool
	 */
	public static function copy($path, $target)
	{
		return copy($path, $target);
	}

	/**
	 * Extract the file name from a file path.
	 *
	 * @param  string  $path
	 * @return string
	 */
	public static function name($path)
	{
		return pathinfo($path, PATHINFO_FILENAME);
	}

	/**
	 * Extract the trailing name component from a file path.
	 *
	 * @param  string  $path
	 * @return string
	 */
	public static function basename($path)
	{
		return pathinfo($path, PATHINFO_BASENAME);
	}

	/**
	 * Extract the parent directory from a file path.
	 *
	 * @param  string  $path
	 * @return string
	 */
	public static function dirName($path)
	{
		return pathinfo($path, PATHINFO_DIRNAME);
	}

	/**
	 * Extract the file extension from a file path.
	 *
	 * @param  string  $path
	 * @return string
	 */
	public static function extension($path)
	{
		return pathinfo($path, PATHINFO_EXTENSION);
	}

	/**
	 * Get the file type of a given file.
	 *
	 * @param  string  $path
	 * @return string
	 */
	public static function type($path)
	{
		return filetype($path);
	}

	/**
	 * Get the mime-type of a given file.
	 *
	 * @param  string  $path
	 * @return string|false
	 */
	public static function mimeType($path)
	{
		return finfo_file(finfo_open(FILEINFO_MIME_TYPE), $path);
	}

	/**
	 * Get the file size of a given file.
	 *
	 * @param  string  $path
	 * @return int
	 */
	public static function size($path)
	{
		return filesize($path);
	}

	/**
	 * Get the file's last modification time.
	 *
	 * @param  string  $path
	 * @return int
	 */
	public static function lastModified($path)
	{
		return filemtime($path);
	}

	/**
	 * Determine if the given path is a directory.
	 *
	 * @param  string  $directory
	 * @return bool
	 */
	public static function isDirectory($directory)
	{
		return is_dir($directory);
	}

	/**
	 * Determine if the given path is readable.
	 *
	 * @param  string  $path
	 * @return bool
	 */
	public static function isReadable($path)
	{
		return is_readable($path);
	}

	/**
	 * Determine if the given path is writable.
	 *
	 * @param  string  $path
	 * @return bool
	 */
	public static function isWritable($path)
	{
		return is_writable($path);
	}
	
	/**
	 * Determine if the given path is a file.
	 *
	 * @param  string  $file
	 * @return bool
	 */
	public static function isFile($file)
	{
		return is_file($file);
	}

	/**
	 * Find path names matching a given pattern.
	 *
	 * @param  string  $pattern
	 * @param  int     $flags
	 * @return array
	 */
	public static function glob($pattern, $flags = 0)
	{
		return glob($pattern, $flags);
	}
	
	/**
	 * Get an array of all files in a directory.
	 *
	 * @param $filePath
	 * @return array
	 */
	public static function files($filePath)
	{
		$files = [];
		foreach(scandir($filePath) as $check){
			if(self::isFile($check)){
				$files[] = $check;
			}
		}
		
		return $files;
	}

	/**
	 * Get all of the directories within a given directory.
	 *
	 * @param  string  $directory
	 * @return array
	 */
	public static function directories($directory)
	{
		$directories = [];
		foreach(scandir($directory) as $check){
			if(self::isDirectory($check)){
				$directories[] = $check;
			}
		}

		return $directories;
	}
	
	/**
	 * Create a directory.
	 * 
	 * @param $path
	 * @param int $mode
	 * @param bool $recursive
	 * @param bool $force
	 * @return bool
	 */
	public static function makeDirectory($path, $mode = 0755, $recursive = false, $force = false)
	{
		if(!self::isDirectory($path)){
			if($force){
				return @mkdir($path, $mode, $recursive);
			}

			return mkdir($path, $mode, $recursive);
		}

		return false;
	}

	/**
	 * Move a directory.
	 *
	 * @param  string  $from
	 * @param  string  $to
	 * @param  bool  $overwrite
	 * @return bool
	 */
	public static function moveDirectory($from, $to, $overwrite = false)
	{
		if($overwrite && self::isDirectory($to) && !self::deleteDirectory($to)){
			return false;
		}

		return @rename($from, $to) === true;
	}

	/**
	 * Copy a directory from one location to another.
	 *
	 * @param  string  $directory
	 * @param  string  $destination
	 * @param  int     $options
	 * @return bool
	 */
	public static function copyDirectory($directory, $destination, $options = null)
	{
		if(!self::isDirectory($directory)){
			return false;
		}

		$options = $options ?: FilesystemIterator::SKIP_DOTS;

		if(!self::isDirectory($destination)){
			self::makeDirectory($destination, 0777, true);
		}

		$items = new FilesystemIterator($directory, $options);
		foreach ($items as $item){
			$target = $destination.'/'.$item->getBasename();

			if($item->isDir()){
				$path = $item->getPathname();
				if(!self::copyDirectory($path, $target, $options)){
					return false;
				}

			}else{
				if(! self::copy($item->getPathname(), $target)){
					return false;
				}
			}
		}

		return true;
	}

	/**
	 * Recursively delete a directory.
	 *
	 * The directory itself may be optionally preserved.
	 *
	 * @param  string  $directory
	 * @param  bool    $preserve
	 * @return bool
	 */
	public static function deleteDirectory($directory, $preserve = false)
	{
		if(!self::isDirectory($directory)){
			return false;
		}

		$items = new FilesystemIterator($directory);
		foreach($items as $item){
			if($item->isDir() && !$item->isLink()){
				self::deleteDirectory($item->getPathname());
			}else{
				self::delete($item->getPathname());
			}
		}

		if(!$preserve){
			@rmdir($directory);
		}

		return true;
	}

	/**
	 * Remove all of the directories within a given directory.
	 *
	 * @param  string  $directory
	 * @return bool
	 */
	public static function deleteDirectories($directory)
	{
		$allDirectories = self::directories($directory);

		if(!empty($allDirectories)){
			foreach ($allDirectories as $directoryName){
				self::deleteDirectory($directoryName);
			}

			return true;
		}

		return false;
	}

	/**
	 * Empty the specified directory of all files and folders.
	 *
	 * @param  string  $directory
	 * @return bool
	 */
	public static function cleanDirectory($directory)
	{
		return self::deleteDirectory($directory, true);
	}
}