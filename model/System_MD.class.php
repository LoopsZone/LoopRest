<?php

class System_MD
{
  static private $singleton;

  /**
   * get a singleton instance of System_MD
   *
   * @return System_MD
   */
  public static function getInstance()
  {
    if(is_null(self::$singleton)){
      self::$singleton = new System_MD();
    }

    return self::$singleton;
  }

  /**
   * Run initials system settings
   */
  public function runInitialSystemSettings()
  {
  	try {
  		$step = new ExecutionStep();
  		//$secretUniqueKey = $step->checkSecretKey;
      $accessDB = $step->checkAccessSystemDB;
	  }catch(Exception $error){
		  ErrorManager::onErrorRoute($error);
	  }
  }
}