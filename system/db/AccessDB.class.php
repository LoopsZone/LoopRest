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
		$this->user = 'root';
		$this->password = '';
		$this->host = 'localhost';
		$this->dataBase = 'looprest';
		
		$this->result = new DB();
		$this->conectionDB = new MysqlDB($this->host, $this->user, $this->password, $this->dataBase);
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