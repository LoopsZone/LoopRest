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
    return parent::execute("CREATE DATABASE {$dbName} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci");
  }

	/**
	 * Created new table in current data base
	 *
	 * @param $tableName
	 * @return bool
	 */
  public function newTable($tableName, $colunms = [])
  {
    $foreignKey = '';
    $columnsSTR = '';
    foreach($colunms as $name => $schema){
      if(is_array($schema)){
        $unique = ($schema['unique']) ? ' UNIQUE' : '';
        $nullAble = ($schema['null']) ? '' : ' NOT NULL';
        $primaryKey = ($schema['primaryKey']) ? ' PRIMARY KEY' : '';
        $length = ($schema['length']) ? "({$schema['length']})" : '';
        $autoIncrement = ($schema['autoIncrement']) ? ' AUTO_INCREMENT' : '';
        $default = ($schema['default']) ? " DEFAULT {$schema['default']}" : '';
        $foreignKey .= ($schema['foreignKey']) ? ", CONSTRAINT `{$schema['foreignKey'][0]}-{$name}` FOREIGN KEY (`{$name}`) REFERENCES {$schema['foreignKey'][0]}(`{$schema['foreignKey'][1]}`)" : '';

        $default = ($autoIncrement) ? $autoIncrement : $default;
        $schemaColumn = $schema['type'] . $length . $nullAble . $primaryKey . $default . $unique;
      }

      $columnsSTR .= "`{$name}` {$schemaColumn}";
      $columnsGenerate = $columnsSTR;
      $columnsSTR = $columnsGenerate . ', ';
    }

  	return parent::execute("CREATE TABLE {$tableName} ({$columnsGenerate}{$foreignKey})");
  }

	/**
	 * Check if table exist
	 *
	 * @param $tableName
	 * @return bool
	 */
  public function tableExist($tableName)
  {
  	$result = parent::query("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '{$tableName}'");

  	return (count($result));
  }

	/**
	 * Get Values from table
	 *
	 * @param $tableName
	 * @param array $columnsMatch
	 * @return array|bool
	 */
  protected function queryRegistry($tableName, $columnsMatch = [])
  {
	  $matchSTR = "WHERE ";
  	foreach($columnsMatch as $column => $value){
		  $matchSTR .= "`{$column}` = '{$value}'";
		  $match = $matchSTR;
		  $matchSTR = $match . ' AND ';
	  }

	  return parent::query("SELECT * FROM {$tableName} {$match}");
  }

	/**
	 * Insert registry in table
	 *
	 * @param $tableName
	 * @param array $columnsMatch
	 * @return bool
	 */
  protected function newRegistry($tableName, $columnsMatch = [])
  {
	  $valuesSTR = '';
	  $columnsSTR = '';
	  foreach($columnsMatch as $column => $value){
		  $columnsSTR .= "`{$column}`";
		  $columns = $columnsSTR;
		  $columnsSTR = $columns . ', ';

		  $valuesSTR .= "'{$value}'";
		  $values = $valuesSTR;
		  $valuesSTR = $values . ', ';
	  }

	  return parent::execute("INSERT INTO {$tableName} ({$columns}) VALUES ({$values})");
  }

  /**
   * Update columns for current model
   *
   * @param $tableName
   * @param array $columnsMatch
   * @return bool
   */
  protected function updateRegistry($tableName, $columnsMatch = [], $primaryKey)
  {
    $columnsSTR = '';
    foreach($columnsMatch as $column => $value){
      $columnsSTR .= "`{$column}` = '{$value}'";
      $columns = $columnsSTR;
      $columnsSTR = $columns . ', ';
    }

    return parent::execute("UPDATE {$tableName} SET {$columns} WHERE {$primaryKey[0]} = {$primaryKey[1]}");
  }

  /**
   *
   */
  protected function mapQueryModel($tarject, $matchValue)
  {
    $table = $tarject['table'];
    $column = $tarject['column'];
    $from = $tarject['foreignKey'][0];
    $match = $tarject['foreignKey'][1];

    return parent::query("SELECT {$table}.* FROM {$table} INNER JOIN {$from} ON {$table}.{$column}  = {$from}.{$match} WHERE {$from}.{$match} = {$matchValue}");
  }
}