<?php

class Model
{
	private static $order = 0;
	private static $singleton;
	private static $executionSteps;

	/**
	 * @return Model
	 */
	public static function getInstance()
	{
		if(is_null(self::$singleton)){
			self::startStepsRoutesSystem(get_class());
			self::$singleton = new Model();
		}

		return self::$singleton;
	}

	/**
	 * @return mixed
	 */
	public static function getExecutionSteps()
	{
		return self::$executionSteps;
	}

	/**
	 * Track current execution steps in system
	 *
	 * @param $model
	 * @param $method
	 */
	public static function TrackExecution($model, $method)
	{
		if(method_exists($model, $method)){
			try{
				throw new Exception('Current execution track', 10);
			}catch(Exception $e){
				self::$executionSteps[$model][++self::$order][$method] = $e->getTrace();
			}
		}
	}

	/**
	 * Start tracking model mode
	 *
	 * @param $model
	 * @return ReflectionClass | boolean
	 * @throws Exception
	 */
	public static function __call($model, $arguments)
	{
		$className = ucfirst($model) . '_MD';
		$path = SystemPath::loadFile($className, DIRECTORY . 'model');

		if($path){
			self::TrackExecution($className, 'getInstance');
			return $className::getInstance();
		}

		return false;
	}

	/**
	 * Model
	 * get a singleton instance of ClientServer_MD
	 *
	 * @return ClientServer_MD
	 */
	private function clientServerInstance()
	{
		return ClientServer_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of Route_MD
	 *
	 * @return Route_MD
	 */
	private function routeInstance()
	{
		return Route_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of Views_MD
	 *
	 * @return View_MD
	 */
	private function viewsInstance()
	{
		return View_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of DataBase
	 *
	 * @return DataBase_MD
	 */
	private function dataBaseInstance()
	{
		return DataBase_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of System_MD
	 *
	 * @return System_MD
	 */
	private function systemInstance()
	{
		return System_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of UserModel_DB
	 *
	 * @return ModelDB
	 */
	private function userInstance()
	{
		return User_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of ProjectsModel_DB
	 *
	 * @return ModelDB
	 */
	private function projectsInstance()
	{
		return Projects_MD::getInstance();
	}

	private function issuesInstance()
	{
		return Issues_MD::getInstance();
	}
}