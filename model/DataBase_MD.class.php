<?php

class DataBase_MD
{
	private $host;
	private $user;
	private $password;
	private $dataBase;
	private $dataBaseEngine;
	private static $singleton;

	/**
	 * get a singleton instance of DataBase_MD
	 *
	 * @return DataBase_MD
	 */
	public static function getInstance()
	{
		if(is_null(self::$singleton)){
			self::$singleton = new DataBase_MD();
		}

		return self::$singleton;
	}

	/**
	 * @param $host
	 */
	public function setHost($host)
	{
		$this->host = $host;
	}

	/**
	 * @return mixed
	 */
	public function getHost()
	{
		return $this->host;
	}

	/**
	 * @param $user
	 */
	public function setUser($user)
	{
		$this->user = $user;
	}

	/**
	 * @return mixed
	 */
	public function getUser()
	{
		return $this->user;
	}

	/**
	 * @param $password
	 */
	public function setPassword($password)
	{
		$this->password = $password;
	}

	/**
	 * @return mixed
	 */
	public function getPassword()
	{
		return $this->password;
	}

	/**
	 * @param $dataBase
	 */
	public function setDataBase($dataBase)
	{
		$this->dataBase = $dataBase;
	}

	/**
	 * @return mixed
	 */
	public function getDataBase()
	{
		return $this->dataBase;
	}

	/**
	 * @param $dataBaseEngine
	 */
	public function setDataBaseEngine($dataBaseEngine)
	{
		$this->dataBaseEngine = $dataBaseEngine;
	}

	/**
	 * @return mixed
	 */
	public function getDataBaseEngine()
	{
		return $this->dataBaseEngine;
	}
}