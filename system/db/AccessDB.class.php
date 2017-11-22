<?php

/**
 * Class AccessDB
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AccessDB
{
	private $db;
	private $host;
	private $user;
	private $password;
	private $conectionDB;
	
	protected function conectionDB()
	{
		$this->host = 'localhost';
		$this->user = 'root';
		$this->password = '';
		$this->db = 'looprest';
		
		$this->conectionDB = new MysqlDB($this->host, $this->user, $this->password, $this->db);
	}
	
	/**
	 * Request data to system
	 *
	 * @param $object
	 * @param $registry
	 * @param bool $print
	 * @return bool|array
	 */
	protected function requestSystemData($object, $registry, $print = true)
	{
		$this->conectionDB();
		$db = $this->conectionDB;
		return $db->search($object, $registry, $print);
	}
	
	/**
	 * Insert data in system
	 *
	 * @param $object
	 * @param $data
	 * @return array|bool
	 */
	protected function insertSystemData($object, $data){
		$this->conectionDB();
		$db = $this->conectionDB;
		return $db->insert($object, $data);
	}
}