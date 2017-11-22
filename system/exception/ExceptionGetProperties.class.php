<?php

class ExceptionGetProperties extends Error
{
	private $errorType = 'GetProperties';
	private $triggerRoute = Expected::ExpRouteError;
	
	function __construct ($errorMap)
	{
		$expected = key($errorMap);
		
		if(key_exists(Expected::ExpRouteError, $errorMap[$expected])) {
			
			$mistakes = $errorMap[$expected][Expected::ExpRouteError];
			$settingValues = $errorMap[$expected][ExpectVariables::SetProperties];
			
			if($mistakes) {
				
				$helpMessage = '';
				$secondMessage = array();
				
				foreach($mistakes as $error => $message) {
					
					$value = $settingValues[$error];
					
					if(is_array($value)) {
						$multiValue = '';
						
						foreach($value as $key => $val) {
							$multiValue .= "{$val} ";
						}
						
						$value = $multiValue;
					}
					
					if($error == $expected) {
						$helpMessage = "The key {$error} have a problem when this set in the setVariables, the value setting is {$value}.";
					} else {
						$secondMessage[] = "Others problem in settings during build system requirement its {$error} with setting value {$value}";
					}
				}
				
				$message = array();
				$message[] = $helpMessage;
				$message[] = $secondMessage;
				
				parent::handleException($this->errorType, $message);
				
				$messageResponse = array();
				$messageResponse[GlobalSystem::ExpRouteError] = $mistakes;
				$this->messageResponse = $messageResponse;
				
				return true;
			}
		}
		
		Throw new GeneralException;
	}
}