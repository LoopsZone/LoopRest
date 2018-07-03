<?php

class ExecutionStep extends ExecutionStepsErrors
{
	private $stepName;

  /**
   * @param $stepName
   * @return mixed
   * @throws Exception
   */
	public function __get($stepName)
	{
		$this->stepName = $stepName;
		$step = $this->$stepName();

		if(!$step){
			$error[GlobalSystem::ExpErrorDesc] = $stepName;
			$error[GlobalSystem::ExpErrorCode] = self::$errorCodesSteps[$stepName][GlobalSystem::ExpErrorCode];

			ErrorManager::throwException($error);
		}

		return $step;
	}

  /**
   * The execution step must begin
   *
   * @return bool
   */
  public static function stepErrorView()
  {
    $model = Model::getInstance();
    $routeMD = $model->getRouteInstance;
    $errorRequest = $routeMD->getRequest();

    $exception = ExecutionStep::$errorCodesSteps;
    $errorCode = $errorRequest[GlobalSystem::ExpErrorCode];
    $errorDesc = $errorRequest[GlobalSystem::ExpErrorDesc];

    if(key_exists($errorDesc, $exception)){
      $exception = $exception[$errorDesc];
      if($exception[GlobalSystem::ExpErrorCode] == $errorCode){
        $view = $exception[GlobalSystem::ExpView];

        $request = [
          GlobalSystem::ExpRouteView => [
            GlobalSystem::ExpView => $view
          ]
        ];

        $routeMD->setRequest($request);
        $routeMD->setRoute(GlobalSystem::ExpRouteView);

        return true;
      }
    }

    return false;
  }

  /**
   * Check step Secret Key
   *
   * @return bool|mixed
   */
  private function checkSecretKey()
  {
    return Cache::getDocument(GlobalSystem::CacheSecretKey);
  }

  private function checkConnexionHostDB()
  {
    $dbConfig = Cache::getDocument(GlobalSystem::CacheConfigDB);

    if($dbConfig){
      $dataBaseMD = DataBase_MD::getInstance();
      $dataBaseMD->setHost($dbConfig[GlobalSystem::ExpHostDB]);
      $dataBaseMD->setUser($dbConfig[GlobalSystem::ExpUserDB]);
      $dataBaseMD->setPassword($dbConfig[GlobalSystem::ExpPasswordDB]);
      $dataBaseMD->setDataBaseEngine($dbConfig[GlobalSystem::ExpEngineDB]);
    }

    try{
      return new AccessDB();
    }catch(Exception $error){
      self::$errorCodesSteps[$this->stepName][GlobalSystem::ExpErrorLast] = $error;
      return false;
    }
  }

  /**
   * Check step check access systemDB
   *
   * @return AccessDB|bool
   */
	private function checkAccessSystemDB()
	{
	  $model = Model::getInstance();
		$dataBaseMD = $model->getDataBaseInstance;
		$dataBaseMD->setDataBase(CoreConfig::DB_SYSTEM);

		try{
      $connexionDB = new AccessDB();
		}catch(Exception $error){

		  if($error->getCode() == self::$sqlErrorCodes[GlobalSystem::StepCheckAccessSystemDB]){
        $dataBaseMD->setDataBase(null);
        $connexionDB = new AccessDB();

        if($connexionDB->newDB(CoreConfig::DB_SYSTEM)){
          return true;
        }
      }

      self::$errorCodesSteps[$this->stepName][GlobalSystem::ExpErrorLast] = $error;
      return false;
		}

		return $connexionDB;
	}
}