<?php

/**
 * Class ModelsTracking
 */
class ModelsTracking extends GlobalSystem
{
	private static $order = 0;
	protected static $currentStep;
	protected static $executionSteps;
	
	/**
	 * Start new execution system steps
	 *
	 * @param $class
	 */
	public static function startStepsRoutesSystem($class){
		try{
			throw new Exception('Initial execution track', 10);
		}catch(Exception $e){
			self::$executionSteps = array();
			self::$executionSteps[$class][self::$order] = $e->getTrace();
		}
	}
	
	/**
	 * Track current execution steps in system
	 *
	 * @param $model
	 * @param $method
	 */
	public static function TrackExecution($model, $method){
		if(method_exists($model, $method)){
			try{
				throw new Exception('Current execution track', 10);
			}catch(Exception $e){
				self::$executionSteps[$model][++self::$order][$method] = $e->getTrace();
			}
		}
	}
}