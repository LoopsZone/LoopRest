<?php

/**
 * Class AccessDB
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class AccessDB extends DB
{
	public function __construct ()
	{
		$dbMD = Model::dataBaseInstance();

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
	public function newDB ($dbName)
	{
		return parent::execute("CREATE DATABASE {$dbName} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci");
	}

	/**
	 * Created new model in current data base
	 *
	 * @param $ModelName
	 * @return bool
	 */
	public function newModel ($ModelName, $properties = [])
	{
		$foreignKey = '';
		$columnsSTR = '';
		foreach($properties as $name => $schema) {
			if(is_array($schema)) {
				$unique = (@$schema[GlobalSystem::ExpUnique]) ? ' UNIQUE' : '';
				$nullAble = (@$schema[GlobalSystem::ExpNull]) ? '' : ' NOT NULL';
				$primaryKey = (@$schema[GlobalSystem::ExpPrimaryKey]) ? ' PRIMARY KEY' : '';
				$length = (@$schema[GlobalSystem::ExpLength]) ? "({$schema[GlobalSystem::ExpLength]})" : '';
				$autoIncrement = (@$schema[GlobalSystem::ExpAutoIncrement]) ? ' AUTO_INCREMENT' : '';
				$default = (@$schema[GlobalSystem::ExpDefault]) ? " DEFAULT {$schema[GlobalSystem::ExpDefault]}" : '';
				$foreignKey .= (@$schema[GlobalSystem::ExpForeignKey]) ? ", CONSTRAINT `{$schema[GlobalSystem::ExpForeignKey][0]}-{$name}` FOREIGN KEY (`{$name}`) REFERENCES {$schema[GlobalSystem::ExpForeignKey][0]}(`{$schema[GlobalSystem::ExpForeignKey][1]}`)" : '';

				$default = ($autoIncrement) ? $autoIncrement : $default;
				$schemaColumn = $schema[GlobalSystem::ExpType] . $length . $nullAble . $primaryKey . $default . $unique;
			}

			$columnsSTR .= "`{$name}` {$schemaColumn}";
			$columnsGenerate = $columnsSTR;
			$columnsSTR = $columnsGenerate . ', ';
		}

		return parent::execute("CREATE TABLE {$ModelName} ({$columnsGenerate}{$foreignKey})");
	}

	/**
	 * Check if model exist
	 *
	 * @param $modelName
	 * @return bool
	 */
	public function modelExist ($modelName)
	{
		$result = parent::query("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '{$modelName}'");

		return (count($result));
	}

	/**
	 * Get Values from model
	 *
	 * @param $modelName
	 * @param array $propertiesMatch
	 * @return array|bool
	 */
	protected function queryRegistry ($modelName, $propertiesMatch = [])
	{
		$matchSTR = "WHERE ";
		foreach($propertiesMatch as $property => $value) {
			$matchSTR .= "`{$property}` = '{$value}'";
			$match = $matchSTR;
			$matchSTR = $match . ' AND ';
		}

		return parent::query("SELECT * FROM {$modelName} {$match}");
	}

	/**
	 * Insert registry in model
	 *
	 * @param $modelName
	 * @param array $propertiesMatch
	 * @return bool
	 */
	protected function newRegistry ($modelName, $propertiesMatch = [])
	{
		$valuesSTR = '';
		$propertiesSTR = '';
		foreach($propertiesMatch as $property => $value) {
			$propertiesSTR .= "`{$property}`";
			$properties = $propertiesSTR;
			$propertiesSTR = $properties . ', ';
	
			$valuesSTR .= "'{$value}'";
			$values = $valuesSTR;
			$valuesSTR = $values . ', ';
		}
	
		return parent::execute("INSERT INTO {$modelName} ({$properties}) VALUES ({$values})");
	}

	/**
	 * Update property for current model
	 *
	 * @param $modelName
	 * @param array $propertiesMatch
	 * @return bool
	 */
	protected function updateRegistry ($modelName, $propertiesMatch = [], $primaryKey)
	{
		$propertiesSTR = '';
		foreach($propertiesMatch as $property => $value) {
			$propertiesSTR .= "`{$property}` = '{$value}'";
			$columns = $propertiesSTR;
			$propertiesSTR = $columns . ', ';
		}

		return parent::execute("UPDATE {$modelName} SET {$columns} WHERE {$primaryKey[0]} = {$primaryKey[1]}");
	}

	/**
	 * Delete registry in current model
	 *
	 * @param $modelName
	 * @param $primaryKey
	 * @return bool
	 */
	protected function deleteRegistry ($modelName, $primaryKey)
	{
		return parent::execute("DELETE FROM {$modelName} WHERE {$primaryKey[0]} = {$primaryKey[1]}");
	}
	
	/**
	 * Map current fk relations in model target
	 *
	 * @param $target
	 * @return array
	 */
	protected function mapQueryModel ($target)
	{
		$model = $target::getInstance();

		$fk = $model->fkColumn();
		if(key_exists(GlobalSystem::ExpForeignKey, $fk)) {
			$map = $this->mapQueryModel($fk[GlobalSystem::ExpForeignKey][0]);
			array_push($map[GlobalSystem::ExpJoin], $fk);
		} else {
			$match = $model->primaryColumn();
			$matchValue = $model->query()->registry()->$match;

			$map = [
				GlobalSystem::ExpJoin => [],
				GlobalSystem::ExpFrom => [
					GlobalSystem::ExpModel => $target,
					GlobalSystem::ExpMatcher => $match,
					GlobalSystem::ExpMatchValue => $matchValue
				]
			];
		}

		return $map;
	}

	/**
	 * Generate sql joints to target from current schema map
	 *
	 * @param $map
	 * @return mixed
	 */
	protected function genSelectsJoins ($map)
	{
		$joins = array_reverse($map[GlobalSystem::ExpJoin]);
		$from = $map[GlobalSystem::ExpFrom][GlobalSystem::ExpModel];
		$matcher = $map[GlobalSystem::ExpFrom][GlobalSystem::ExpMatcher];
		$matchValue = $map[GlobalSystem::ExpFrom][GlobalSystem::ExpMatchValue];
	
		$target = $joins[0][GlobalSystem::ExpModel];
		$sqlBase = "SELECT {$target}.* FROM {$target} {join} WHERE {$from}.{$matcher} = {$matchValue}";

		$joinBase = '';
		foreach($joins as $join) {
			$joinBase .= "INNER JOIN {$join[GlobalSystem::ExpForeignKey][0]} ON {$join[GlobalSystem::ExpForeignKey][0]}.{$join[GlobalSystem::ExpForeignKey][1]} = {$join[GlobalSystem::ExpModel]}.`{$join[GlobalSystem::ExpProperty]}` ";
		}

		return str_replace('{join}', $joinBase, $sqlBase);
	}
}