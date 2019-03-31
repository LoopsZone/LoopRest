<?php

class Model
{
	private static $order = 0;
	private static $executionSteps;

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
	public static function __callStatic($model, $params)
	{
		if(method_exists(self::class, $model)){
			self::TrackExecution(self::class, $model);
			return self::$model();
		}

		return false;
	}

	/**
	 * Model
	 * get a singleton instance of ClientServer_MD
	 *
	 * @return ClientServer_MD
	 */
	private static function clientServerInstance()
	{
		return ClientServer_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of Route_MD
	 *
	 * @return Route_MD
	 */
	private static function routeInstance()
	{
		return Route_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of Views_MD
	 *
	 * @return View_MD
	 */
	private static function viewsInstance()
	{
		return View_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of DataBase
	 *
	 * @return DataBase_MD
	 */
	private static function dataBaseInstance()
	{
		return DataBase_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of System_MD
	 *
	 * @return System_MD
	 */
	private static function systemInstance()
	{
		return System_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of UserModel_DB
	 *
	 * @return ModelDB
	 */
	private static function userInstance()
	{
		return User_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of ProjectsModel_DB
	 *
	 * @return ModelDB
	 */
	private static function projectsInstance()
	{
		return Projects_MD::getInstance();
	}

	private static function issuesInstance()
	{
		return Issues_MD::getInstance();
	}
}