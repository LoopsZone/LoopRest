<?php

class ModelsTrack extends StepsRoutes
{
	public static function TrackExecution($model, $method){
		if(method_exists($model, $method)){
			self::executionSteps($model, $method);
			throw new Exception('Execute method' . $method, 6);
		}
	}
}