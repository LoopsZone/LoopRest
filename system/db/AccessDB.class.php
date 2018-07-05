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

	/**
	 * Created new table in current data base
	 *
	 * @param $tableName
	 * @return bool
	 */
  public function newTable($tableName, $colunms = [])
  {
    $columnsSTR = '';
    foreach($colunms as $name => $schema){
      if(is_array($schema)){
        $length = current($schema);
        $schema = key($schema) . "({$length})";
      }

      $columnsSTR .= "{$name} {$schema}";
      $columnsGenerate = $columnsSTR;
      $columnsSTR = $columnsGenerate . ', ';
    }

  	return $this->connectionDB->execute("CREATE TABLE {$tableName} ({$columnsGenerate})");
  }

	/**
	 * Check if table exist
	 *
	 * @param $tableName
	 * @return bool
	 */
  public function tableExist($tableName)
  {
  	$result = $this->connectionDB->query("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '{$tableName}'");

  	return (count($result));
  }

	/**
	 * Get Values from table
	 *
	 * @param $tableName
	 * @param array $columnsMatch
	 * @return array|bool
	 */
  public function getTableValue($tableName, $columnsMatch = [])
  {
  	$match = '';
	  $matchSTR = "WHERE ";
  	foreach($columnsMatch as $column => $value){
  		$matchSTR .= "{$column} = {$value}";
  		$match = $matchSTR;
  		$matchSTR = $match . ' AND ';
	  }

	  return $this->connectionDB->query("SELECT * FROM {$tableName} {$match}");
  }
}