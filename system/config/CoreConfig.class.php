<?php

class CoreConfig
{
  /**
   * Define if the current environment is development or production
   *
   * @var bool
   */
  const DEV = true;

  /**
   * X debug key session use
   */
  const DEBUG_KEY = 'XDEBUG_SESSION_START';

  /**
   * define if we must print the exception or not.
   * DEV must be in true
   *
   * @var bool
   */
  const PRINT_EXCEPTIONS = false;

  /**
   * User owner of the directory system
   */
  const USER_DIRECTORY = 'root';
	
	/**
	 * Expired days from cache documents
	 */
  const CACHE_EXPIRED_DAYS = 3;

  /**
   * Cache save documents path
   */
  const CACHE_PATH = DIRECTORY . 'system' . DS . 'cache';

	/**
	 * Cache document translate routes
	 */
  const CACHE_TRANSLATE_ROUTES = 'TRANSLATE_ROUTES';

  /**
   * Cache file format
   */
  const CACHE_SUFFIX_FILE = '.json';

  /**
   * path where all system logs will be stored
   *
   * @var string
   */
  const LOG_PATH = DIRECTORY . 'system' . DS . 'logs';

  /**
   * Name to principal component view to this system
   * @see views::__construct()
   */
  const PRINCIPAL_VIEW = 'Home';

  /**
   * The suffix name use to require any php class in execution time
   * @see AutoLoad::LoadClasses
   */
  const SUFFIX_FILE = '.class.php';

  /**
   * Encrypt algorithm to use
   */
  const ENCRYPT = ['HS256'];

  /**
   * Root users with global access
   * @var array
   */
  public static $rootUsers = [
    'hemma.hvu@gmail.com'
  ];

  /**
   * Use the database to establish the initial system configuration
   */
  const DB_SYSTEM = 'system_lp';

	/**
	 * Use the host's dns where your sensitive data awaits
	 */
  const DB_SYSTEM_HOST = 'localhost';

	/**
	 * Use to shield sensitive data
	 */
  const DB_SYSTEM_PASSWORD = 'loop';

	/**
	 * Use it to identify user access to the database
	 */
  const DB_SYSTEM_USERNAME = 'root';

	/**
	 * Use for the database controller used
	 *
	 * Engine controllers integrated
	 *  MySql
	 */
  const DB_SYSTEM_ENGINE_USE = GlobalSystem::DBEngineMysql;
}