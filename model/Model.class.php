<?php

class Model extends ModelsTracking
{
	private static $singleton;

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
	 * Start tracking model mode
	 * 
	 * @param $method
	 * @return bool
	 */
	public function __get($method)
	{
			self::TrackExecution(get_class(), $method);

			return $this->$method();
	}

	/**
	 * Model
	 * get a singleton instance of ClientServer_MD
	 *
	 * @return ClientServer_MD
	 */
	private function getClientServerInstance()
	{
		return ClientServer_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of Route_MD
	 *
	 * @return Route_MD
	 */
	private function getRouteInstance()
	{
		return Route_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of Views_MD
	 *
	 * @return Views_MD
	 */
	private function getViewsInstance()
	{
		return Views_MD::getInstance();
	}

	/**
	 * Model
	 * get a singleton instance of DataBase
	 *
	 * @return DataBase_MD
	 */
	private function getDataBaseInstance()
	{
		return DataBase_MD::getInstance();
	}
}