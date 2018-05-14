<?php

class ExecutionStep extends ExecutionStepsErrors
{
	private $stepName;

	/**
	 * @param $name
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
        if(key_exists(GlobalSystem::ExpErrorLast, $exception)){
          if($exception[GlobalSystem::ExpErrorLast]){
            if(key_exists($errorDesc, ExecutionStepsErrors::$stepErrorCodeView)){
              $code = $exception[GlobalSystem::ExpErrorLast]->getCode();
              if(key_exists($code, ExecutionStepsErrors::$stepErrorCodeView[$errorDesc])){
                $view = ExecutionStepsErrors::$stepErrorCodeView[$errorDesc][$code];
              }
            }
          }
        }

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

  private function checkConnexionHostDB()
  {
    $dataBaseMD = DataBase_MD::getInstance();
    $dataBaseMD->setHost(CoreConfig::DB_SYSTEM_HOST);
    $dataBaseMD->setUser(CoreConfig::DB_SYSTEM_USERNAME);
    $dataBaseMD->setPassword(CoreConfig::DB_SYSTEM_PASSWORD);
    $dataBaseMD->setDataBaseEngine(CoreConfig::DB_SYSTEM_ENGINE_USE);

    try{
      return new AccessDB();
    }catch(Exception $error){
      self::$errorCodesSteps[$this->stepName][GlobalSystem::ExpErrorLast] = $error;
      return false;
    }
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

  /**
   * Check step check access systemDB
   *
   * @return AccessDB|bool
   */
	private function checkAccessSystemDB()
	{
		$dataBaseMD = DataBase_MD::getInstance();
		$dataBaseMD->setDataBase(CoreConfig::DB_SYSTEM);
		$dataBaseMD->setHost(CoreConfig::DB_SYSTEM_HOST);
		$dataBaseMD->setUser(CoreConfig::DB_SYSTEM_USERNAME);
		$dataBaseMD->setPassword(CoreConfig::DB_SYSTEM_PASSWORD);
		$dataBaseMD->setDataBaseEngine(CoreConfig::DB_SYSTEM_ENGINE_USE);

		try{
			$db = new AccessDB();
		}catch(Exception $error){
			self::$errorCodesSteps[$this->stepName][GlobalSystem::ExpErrorLast] = $error;
			return false;
		}

		return $db;
	}
}