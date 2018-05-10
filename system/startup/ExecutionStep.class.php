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
	 * Check step Secret Key
	 *
	 * @return bool|mixed
	 */
	private function checkSecretKey()
	{
		return Cache::getDocument(GlobalSystem::CacheSecretKey);
	}

	private function checkAccessSystemDB()
	{
		$dataBaseMD = DataBase_MD::getInstance();
		$dataBaseMD->setDataBase(CoreConfig::DB_SYSTEM . 'test');
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