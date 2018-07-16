<?php

/**
 * Class AccessDB
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AccessDB extends DB
{
	protected $connectionDB;

	protected function __construct()
	{
		$model = Model::getInstance();
		$db = $model->getDataBaseInstance;

		$dbHost = $db->getHost();
		$dbUser = $db->getUser();
		$dbSystem = $db->getDataBase();
		$dbPassword = $db->getPassword();
		$dbEngine = $db->getDataBaseEngine();

		$this->connectionDB = parent::__construct(
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
	protected function close()
	{
		$this->connectionDB = null;
	}

  /**
   * Created new data base
   *
   * @param $dbName
   * @return bool
   */
	protected function newDB($dbName)
  {
    return $this->connectionDB->execute("CREATE DATABASE {$dbName}");
  }

	/**
	 * Created new table in current data base
	 *
	 * @param $tableName
	 * @return bool
	 */
  protected function newTable($tableName, $colunms = [])
  {
    $columnsSTR = '';
    foreach($colunms as $name => $schema){
      if(is_array($schema)){
        $nullAble = ($schema['null']) ? '' : ' NOT NULL';
        $primaryKey = ($schema['primaryKey']) ? ' PRIMARY KEY' : '';
        $length = ($schema['length']) ? "({$schema['length']})" : '';
        $autoIncrement = ($schema['autoIncrement']) ? ' AUTO_INCREMENT' : '';
        $default = ($schema['default']) ? " DEFAULT {$schema['default']}" : '';

        $default = ($autoIncrement) ? $autoIncrement : $default;
        $schemaColumn = $schema['type'] . $length . $nullAble . $primaryKey . $default;
      }

      $columnsSTR .= "{$name} {$schemaColumn}";
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
  protected function tableExist($tableName)
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
  protected function getTableValue($tableName, $columnsMatch = [])
  {
	  $matchSTR = "WHERE ";
  	foreach($columnsMatch as $column => $value){
		  $matchSTR .= "{$column} = '{$value}'";
		  $match = $matchSTR;
		  $matchSTR = $match . ' AND ';
	  }

	  return $this->connectionDB->query("SELECT * FROM {$tableName} {$match}");
  }

	/**
	 * Insert registry in table
	 *
	 * @param $tableName
	 * @param array $columnsMatch
	 * @return bool
	 */
  protected function insert($tableName, $columnsMatch = [])
  {
	  $valuesSTR = '';
	  $columnsSTR = '';
	  foreach($columnsMatch as $column => $value){
		  $columnsSTR .= "{$column}";
		  $columns = $columnsSTR;
		  $columnsSTR = $columns . ', ';

		  $valuesSTR .= "'{$value}'";
		  $values = $valuesSTR;
		  $valuesSTR = $values . ', ';
	  }

	  return $this->connectionDB->execute("INSERT INTO {$tableName} ({$columns}) VALUES ({$values})");
  }
}