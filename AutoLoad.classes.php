<?php
define('DS', DIRECTORY_SEPARATOR);
define('DIRECTORY', __DIR__ . DS);

require 'vendor/autoload.php';
require 'system/Cache.class.php';
require 'system/SystemPath.class.php';
require 'system/FileSystem.class.php';
require 'system/GlobalSystem.class.php';
require 'system/config/CoreConfig.class.php';

spl_autoload_register(function($className){
  require SystemPath::loadFile($className);
});

register_shutdown_function(['ErrorManager', 'onErrorRoute']);