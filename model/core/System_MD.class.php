<?php

class System_MD
{
  private $accessDB;
  private $connexionDB;
  private static $singleton;

  /**
   * Get a singleton instance of System_MD
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
   *
   * @throws Exception
   * @return bool
   */
  public function runInitialSystemSettings()
  {
    $model = Model::getInstance();
    $routeMD = $model->routeInstance();

    $route = $routeMD->getRoute();
    if($route != GlobalSystem::ExpTranslatedRequestStartupRoute){
      try{
        $step = new ExecutionStep();
        $step->checkSecretKey;
        $this->connexionDB = $step->checkConnexionHostDB;
        $this->accessDB = $step->checkAccessSystemDB;
      }catch(Exception $error){
        ErrorManager::onErrorRoute($error);
      }
    }

    return true;
  }
}