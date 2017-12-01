<?php

class CoreConfig
{
  /**
   * define if the current environment is development or production
   *
   * @var bool
   */
  const DEV = true;

  /**
   * define if we must print the exception or not.
   * DEV must be in true
   *
   * @var bool
   */
  const PRINT_EXCEPTIONS = false;

  /**
   * path where all system logs will be stored
   *
   * @var string
   */
  const LOG_PATH = DIRECTORY . 'logs';

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
   * Encript options
   *
   * secret key to encript JWT
   */
  const SECRET_KEY = 'Sdw1s9x8@adjnA@#Sjs#dAsdg*$*S&D&nja';

  /**
   * Encript algorin to use
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
   * Use of the database to establish the system configuration
   */
  const DB_SYSTEM = 'loopsrest';
}

?>