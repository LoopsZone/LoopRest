<?php

class Error extends ExceptionManager
{
	protected $messageResponse = array();
	
	public function getMessageResponse ()
	{
		$messageResponse = array();
		
		foreach($this->messageResponse[GlobalSystem::ExpRouteError] as $code => $message) {
			$messageResponse[GlobalSystem::ExpErrorCode][] = $code;
			$messageResponse[GlobalSystem::ExpErrorDesc][] = $message;
		}
		
		return $messageResponse;
	}
}