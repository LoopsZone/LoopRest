<?php

define('DIR', __DIR__);

class Autoloader {
  static public function CargarClases($className) {

    $filenameClass = str_replace('\\', '/', DIR . "/auth/" . $className . ".class.php");

    if (file_exists($filenameClass)) {

      require_once($filenameClass);
      return true;

    }

    return false;
  }
}
spl_autoload_register('Autoloader::CargarClases');


/**
class Autoloader {

static private function map($directory, $className){

$dir = scandir($directory);

foreach($dir as $check) {

if(is_dir($check)){

$dir = map($check);
} else {

if (file_exists($className . ".class.php")) {

$filenameClass = str_replace('\\', '/', DIR . "/auth/" . $className . ".class.php");
require_once($filenameClass);
return true;

}
}
}

return false;
}

static public function CargarClases($className) {


return false;
}
}

spl_autoload_register('Autoloader::CargarClases');

spl_autoload_register( function( $class_name ) {
$file_name = str_replace('\\', '/', DIR . '/auth/'. $class_name . '.class.php');
if(file_exists($file_name)){
require_once $file_name;
}
});

function my_autoload ($pClassName)
{
  return DIR . DIRECTORY_SEPARATOR. "auth" . DIRECTORY_SEPARATOR . $pClassName . ".class.php";
}

spl_autoload_register('my_autoload');

 *
 *
 *

spl_autoload_register(function($class_name) {

  // Define an array of directories in the order of their priority to iterate through.
  $dirs = array(
    'project/', // Project specific classes (+Core Overrides)
    'classes/', // Core classes example
    'tests/',   // Unit test classes, if using PHP-Unit
  );

  // Looping through each directory to load all the class files. It will only require a file once.
  // If it finds the same class in a directory later on, IT WILL IGNORE IT! Because of that require once!
  foreach( $dirs as $dir ) {
    if (file_exists($dir.'class.'.strtolower($class_name).'.php')) {
      require_once($dir.'class.'.strtolower($class_name).'.php');
      return;
    }
  }
});



spl_autoload_register(function($class) {

  $file = $class . '.class.php';
  $dir_to_not_look_in = array($directories, $to, $not, $look, $in);

  if(!function_exists('load')) {

    function load($dir, $file) {

      if(file_exists($dir . '/' . $file)) {
        require_once $dir . '/' . $file;
      } else {

        foreach(scandir($dir) as $value) {
          if(is_dir($dir. '/' . $value) && !in_array($value, $dir_to_no_look_in))
            load($dir. '/' . $value, $file);
        }
      }
    };

  }

  load(DIR, $file);
});
 *
 **/

/**
function load($dir, $file) {

  if(file_exists($dir . '/' . $file)) {
    require_once $dir . '/' . $file;
  } else {

    foreach(scandir($dir) as $value) {
      if(is_dir($dir. '/' . $value) && !in_array($value, $dir_to_no_look_in))
        load($dir. '/' . $value, $file);
    }
  }
};
 **/