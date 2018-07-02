<?php

class System_MD
{
  private $secretUniqueKey;
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
    $routeMD = $model->getRouteInstance;
    $route = $routeMD->getRoute();
    if($route != GlobalSystem::ExpTranslatedRequestStartupRoute){
      try{
        $step = new ExecutionStep();
        $this->secretUniqueKey = $step->checkSecretKey;
        //$connexionDB = $step->checkConnexionHostDB;
        //$accessDB = $step->checkAccessSystemDB;
      }catch(Exception $error){
        ErrorManager::onErrorRoute($error);
      }
    }

    return true;
  }

  /**
   * @return mixed
   */
  public function getSecretUniqueKey()
  {
    return $this->secretUniqueKey;
  }

  /**
   * @param mixed $secretUniqueKey
   */
  public function setSecretUniqueKey($secretUniqueKey)
  {
    $this->secretUniqueKey = $secretUniqueKey;
  }
}