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
	private $connectionDB;

	protected function connectionDB()
	{
		$this->connectionDB = new DB(
			CoreConfig::DB_SYSTEM_ENGINE_USE,
			CoreConfig::DB_SYSTEM_HOST,
			CoreConfig::DB_SYSTEM,
			CoreConfig::DB_SYSTEM_USERNAME,
			CoreConfig::DB_SYSTEM_PASSWORD
		);
	}

	/**
	 * Get user by email
	 * 
	 * @param $user
	 * @return mixed
	 */
	protected function getUser($userEmail){
		$this->connectionDB();
		$result = $this->connectionDB->query("CALL lpGetUserByEmail({$userEmail})");

		return $result;
	}

	protected function newUser($request){
		$this->connectionDB();

		$userName = $request['name'];
		$userEmail = $request['email'];
		$userBirthday = $request['birthday'];

		$result = $this->connectionDB->execute("CALL lpNewUser({$userName}, {$userEmail}, {$userBirthday})");

		return $result;
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
		$result = $this->connectionDB->execute('CALL test');

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
		$db = $this->connectionDB;
		return $db->insert($object, $data);
	}
}