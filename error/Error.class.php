<?php

class Error extends ExceptionManager
{
	protected $messageResponse = array();
	
	public function getMessageResponse ()
	{
		$messageResponse = array();
		
		foreach($this->messageResponse[Expected::ExpRouteError] as $code => $message) {
			$messageResponse[Expected::ExpErrorCode][] = $code;
			$messageResponse[Expected::ExpErrorDesc][] = $message;
		}
		
		return $messageResponse;
	}
}