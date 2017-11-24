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

  const PRINCIPAL_VIEW = 'Home';

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

  public static $rootUsers = [
    'hemma.hvu@gmail.com'
  ];
}

?>