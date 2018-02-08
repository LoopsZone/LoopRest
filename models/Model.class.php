<?php

class Model extends ModelsTrack
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
	 * @param $method
	 * @return mixed
	 */
	public function __get($method){
		try{
			self::TrackExecution(get_class(), $method);
		}catch(Exception $e){
			return $this->$method();
		}
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
	
	private function getDataBaseInstance()
	{
		return DataBase_MD::getInstance();
	}
}