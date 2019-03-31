<?php

class Log
{
	const LEVEL_INFO = 0;
	const LEVEL_WARNING = 1;
	const LEVEL_ERROR = 2;
	const LEVEL_CRITICAL = 3;
	const LEVEL_EXCEPTION = 4;
	const LEVEL_EVENT = 5;

	/**
	 * format of how we want to record the messages in the files
	 *
	 * @var string
	 */
	private static $format = "[%{datetime}] %{message} \n";

	/**
	 * names for each file type
	 *
	 * @var array
	 */
	private static $postfixes = [
		Log::LEVEL_INFO => 'info',
		Log::LEVEL_WARNING => 'warning',
		Log::LEVEL_ERROR => 'error',
		Log::LEVEL_CRITICAL => 'critical',
		Log::LEVEL_EXCEPTION => 'exception',
		Log::LEVEL_EVENT => 'event'
	];

	/**
	 * file prefix
	 *
	 * @var string
	 */
	private static $prefix = "log-";

	/**
	 * file extension
	 *
	 * @var string
	 */
	private static $extension = ".log";

	/**
	 * Make log directory
	 *
	 * @return bool
	 */
	private static function logDirectory()
	{
		if(!FileSystem::isDirectory(CoreConfig::LOG_PATH)){
			return FileSystem::makeDirectory(CoreConfig::LOG_PATH);
		}

		return false;
	}

	/**
	 * customer function for logging
	 *
	 * @param $file
	 * @param $message
	 * @param null $args
	 * @return bool
	 */
	public static function custom ($file, $message, $args = null)
	{
		self::logDirectory();

		if($args && is_array($args)){
			foreach($args as $key => $value){
				$message = str_replace("{" . $key . "}", $value, $message);
			}
		}

		$content = Log::$format;
		$datetime = date('Y-m-d H:i:s');
		$content = str_replace("%{datetime}", $datetime, $content);
		$content = str_replace("%{message}", $message, $content);

		$logFile = "/" . Log::$prefix . $file . Log::$extension;

		return FileSystem::append(CoreConfig::LOG_PATH . $logFile, $content);
	}

	/**
	 * it checks if a log file exists
	 *
	 * @param int $level
	 *
	 * @return bool
	 */
	public static function logExists($level)
	{
		$logFile = "/" . Log::$prefix . Log::$postfixes[$level] . Log::$extension;
		$fullPath = CoreConfig::LOG_PATH . $logFile;

		return FileSystem::isFile($fullPath);
	}

	/**
	 * log information
	 *
	 * @param string $message
	 * @param array $args
	 */
	public static function info($message, $args = null)
	{
		Log::handle(Log::LEVEL_INFO, $message, $args);
	}

	/**
	 * Main function for logging
	 *
	 * @param $level
	 * @param $message
	 * @param null $args
	 * @return bool
	 */
	private static function handle($level, $message, $args = null)
	{
		self::logDirectory();

		if($args && is_array($args)){
			foreach($args as $key => $value){
				$message = str_replace("{" . $key . "}", $value, $message);
			}
		}

		$content = Log::$format;
		$datetime = date('Y-m-d H:i:s');
		$content = str_replace("%{datetime}", $datetime, $content);
		$content = str_replace("%{message}", $message, $content);

		$logFile = "/" . Log::$prefix . Log::$postfixes[$level] . Log::$extension;

		return FileSystem::append(CoreConfig::LOG_PATH . $logFile, $content);
	}

	/**
	 * log a warning message
	 *
	 * @param string $message
	 * @param array $args
	 */
	public static function warning($message, $args = null)
	{
		Log::handle(Log::LEVEL_WARNING, $message, $args);
	}

	/**
	 * log an error message
	 *
	 * @param string $message
	 * @param array $args
	 */
	public static function error($message, $args = null)
	{
		Log::handle(Log::LEVEL_ERROR, $message, $args);
	}

	/**
	 * log a critical error
	 *
	 * @param string $message
	 * @param array $args
	 */
	public static function critical($message, $args = null)
	{
		Log::handle(Log::LEVEL_CRITICAL, $message, $args);
	}

	/**
	 * log an exception
	 *
	 * @param string $message
	 * @param array $args
	 */
	public static function exception($exception)
	{
		Log::handle(Log::LEVEL_EXCEPTION, $exception);
	}

	/**
	 * log an event
	 *
	 * @param string $message
	 * @param array $args
	 */
	public static function event($event)
	{
		$data = "\n" . $event . "\n";
		$data .= "object >>>\n";
		$data .= "<<< object\n";

		Log::handle(Log::LEVEL_EVENT, $data);
	}
}