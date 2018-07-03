<?php

/**
 * Class AccessDB
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AccessDB
{
	private $connectionDB;

	function __construct()
	{
		$model = Model::getInstance();
		$db = $model->getDataBaseInstance;

		$dbHost = $db->getHost();
		$dbUser = $db->getUser();
		$dbSystem = $db->getDataBase();
		$dbPassword = $db->getPassword();
		$dbEngine = $db->getDataBaseEngine();

		$this->connectionDB = new DB(
		  Encrypt::passwordDecode($dbEngine),
      Encrypt::passwordDecode($dbHost),
      Encrypt::passwordDecode($dbUser),
      Encrypt::passwordDecode($dbPassword),
      Encrypt::passwordDecode($dbSystem)
    );
	}

	/**
	 * Close current connection
	 */
	public function close()
	{
		$this->connectionDB = null;
	}

	/**
	 * Get user by email
	 * 
	 * @param $user
	 * @return mixed
	 */
	public function getUser($userEmail)
	{
		$result = $this->connectionDB->query("CALL lpGetUserByEmail('{$userEmail}')");

		return $result;
	}

	/**
	 * Register new user
	 *
	 * @param $request
	 * @return bool
	 */
	public function newUser($request)
	{
		$userName = $request['name'];
		$userEmail = $request['email'];
		$userBirthday = $request['birthday'];

		$result = $this->connectionDB->execute("CALL lpNewUser('{$userName}', '{$userEmail}', {$userBirthday})");

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
	public function requestSystemData($object, $registry)
	{
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
	public function insertSystemData($object, $data)
	{
		return $this->connectionDB->insert($object, $data);
	}
}