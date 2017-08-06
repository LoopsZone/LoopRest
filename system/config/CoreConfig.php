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
}

?>