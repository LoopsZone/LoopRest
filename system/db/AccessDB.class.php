<?php

/**
 * Class AccessDB
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AccessDB extends DB
{
	public function __construct()
	{
		$model = Model::getInstance();
		$dbMD = $model->getDataBaseInstance;

    parent::__construct(
      Encrypt::passwordDecode($dbMD->getDataBaseEngine()),
      Encrypt::passwordDecode($dbMD->getHost()),
      Encrypt::passwordDecode($dbMD->getUser()),
      Encrypt::passwordDecode($dbMD->getPassword()),
      $dbMD->getDataBase()
    );
	}

  /**
   * Created new data base
   *
   * @param $dbName
   * @return bool
   */
	public function newDB($dbName)
  {
    return $this->execute("CREATE DATABASE {$dbName}");
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
        $unique = ($schema['unique']) ? ' UNIQUE' : '';
        $nullAble = ($schema['null']) ? '' : ' NOT NULL';
        $primaryKey = ($schema['primaryKey']) ? ' PRIMARY KEY' : '';
        $length = ($schema['length']) ? "({$schema['length']})" : '';
        $autoIncrement = ($schema['autoIncrement']) ? ' AUTO_INCREMENT' : '';
        $default = ($schema['default']) ? " DEFAULT {$schema['default']}" : '';
        $foreignKey = ($schema['foreignKey']) ? " FOREIGN KEY REFERENCES {$schema['foreignKey']}" : '';

        $default = ($autoIncrement) ? $autoIncrement : $default;
        $schemaColumn = $schema['type'] . $length . $nullAble . $primaryKey . $default . $unique . $foreignKey;
      }

      $columnsSTR .= "{$name} {$schemaColumn}";
      $columnsGenerate = $columnsSTR;
      $columnsSTR = $columnsGenerate . ', ';
    }

  	return $this->execute("CREATE TABLE {$tableName} ({$columnsGenerate})");
  }

	/**
	 * Check if table exist
	 *
	 * @param $tableName
	 * @return bool
	 */
  public function tableExist($tableName)
  {
  	$result = $this->query("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '{$tableName}'");

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

	  return $this->query("SELECT * FROM {$tableName} {$match}");
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

	  return $this->execute("INSERT INTO {$tableName} ({$columns}) VALUES ({$values})");
  }
}