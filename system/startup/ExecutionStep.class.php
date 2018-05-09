<?php

class ExecutionStep
{
	static $errorCodesSteps = [
		checkSecretKey => 101
	];

	/**
	 * @param $name
	 * @throws Exception
	 */
	public function __get($stepName)
	{
		$step = false;
		$step = $this->$stepName();

		if(!$step){
			$error[GlobalSystem::ExpErrorDesc] = $stepName;
			$error[GlobalSystem::ExpErrorCode] = self::$errorCodesSteps[$stepName];

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
}