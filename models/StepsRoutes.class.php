<?php

/**
 * Class StepsRoutes
 */
class StepsRoutes extends GlobalSystem
{
	private static $order = 0;
	protected static $currentStep;
	protected static $executionSteps;
	
	public static function startStepsRoutesSystem($class){
		try{
			throw new Exception('Initial execution track', 10);
		}catch(Exception $e){
			self::$executionSteps = array();
			self::$executionSteps[$class][self::$order] = $e->getTrace();
		}
	}

	public static function executionSteps($model, $method){
		try{
			throw new Exception('Current execution track', 10);
		}catch(Exception $e){
			self::$executionSteps[$model][++self::$order][$method] = $e->getTrace();
		}
	}

	protected static $setStepsRoutesSystem = [
	
	];
}