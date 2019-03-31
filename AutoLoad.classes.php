<?php
define('DS', DIRECTORY_SEPARATOR);
define('DIRECTORY', __DIR__ . DS);

require 'vendor/autoload.php';
require 'system/config/CoreConfig.class.php';
require 'system/interface/core/Cache.class.php';
require 'system/interface/core/SystemPath.class.php';
require 'system/interface/core/FileSystem.class.php';
require 'system/interface/core/GlobalSystem.class.php';

spl_autoload_register(function($className){
  require SystemPath::loadFile($className);
});

register_shutdown_function(['ErrorManager', 'onErrorRoute']);