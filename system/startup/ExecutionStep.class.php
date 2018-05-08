<?php

class ExecutionStep
{
	const SystemStepError = [
		GlobalSystem::ExpErrorCode => 0,
		GlobalSystem::ExpErrorDesc => ''
	];

	public function __get($name)
	{
		$step = false;
		if(method_exists($this, $name)){
			$step = $this->$name();

			if(!$step){
				ErrorManager::throwException(self::SystemStepError);
			}
		}

		ErrorManager::throwException(self::SystemStepError);
	}

	private function  checkSecretKey()
	{
		return Cache::getDocument('SECRET_KEY');
	}
}