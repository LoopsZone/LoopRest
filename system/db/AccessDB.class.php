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
      $dbSystem
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
   * Created new data base
   *
   * @param $dbName
   * @return bool
   */
	public function newDB($dbName)
  {
    return $this->connectionDB->execute("CREATE DATABASE {$dbName}");
  }
}