<?php

/**
 * Class AccessDB
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AccessDB
{
	private $host;
	private $user;
	private $password;
	private $dataBase;
	private $conectionDB;
	
	protected function connectionDB()
	{
		$this->result = new DB(
			CoreConfig::DB_SYSTEM_ENGINE_USE,
			CoreConfig::DB_SYSTEM_HOST,
			CoreConfig::DB_SYSTEM,
			CoreConfig::DB_SYSTEM_USERNAME,
			CoreConfig::DB_SYSTEM_PASSWORD
		);

		$this->conectionDB = new MysqlDB(
			CoreConfig::DB_SYSTEM_HOST,
			CoreConfig::DB_SYSTEM_USERNAME,
			CoreConfig::DB_SYSTEM_PASSWORD,
			CoreConfig::DB_SYSTEM
		);
	}
	
	/**
	 * Request data to system
	 *
	 * @param $object
	 * @param $registry
	 * @param bool $print
	 * @return bool|array
	 */
	protected function requestSystemData($object, $registry)
	{
		$this->connectionDB();
		$db = $this->conectionDB;
		$result = $db->search($object, $registry);
		
		$db->close();
		return $result;
	}
	
	/**
	 * Insert data in system
	 *
	 * @param $object
	 * @param $data
	 * @return array|bool
	 */
	protected function insertSystemData($object, $data){
		$this->connectionDB();
		$db = $this->conectionDB;
		return $db->insert($object, $data);
	}
}