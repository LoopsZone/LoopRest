<?php

class System_MD
{
  static private $singleton;

  private function __construct()
  {
    $dataBaseMD = DataBase_MD::getInstance();
    $dataBaseMD->setDataBase(CoreConfig::DB_SYSTEM);
    $dataBaseMD->setHost(CoreConfig::DB_SYSTEM_HOST);
    $dataBaseMD->setUser(CoreConfig::DB_SYSTEM_USERNAME . 'test');
    $dataBaseMD->setPassword(CoreConfig::DB_SYSTEM_PASSWORD);
    $dataBaseMD->setDataBaseEngine(CoreConfig::DB_SYSTEM_ENGINE_USE);
  }

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
  		$secretUniqueKey = $step->checkSecretKey;
  		
		  $db = new AccessDB();
	  }catch(Exception $error){
		  ErrorManager::onErrorRoute($error);
	  }
  }
}