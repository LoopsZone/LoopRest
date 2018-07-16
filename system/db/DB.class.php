<?php

class DB
{
	private $dbInstance;

	const INT = 'int';
	const BIT = 'bit';
  const DATE = 'date';
	const VARCHAR = 'varchar';

	protected function __construct ($engine, $host, $user, $password, $db = false)
	{
		if($engine && $host && $user && $password){
			$db = ($db) ? ";dbname={$db}" : '';
			$this->dbInstance = new PDO("{$engine}: host={$host}{$db}", $user, $password);
		}
	}

  /**
   * Get data types sql
   *
   * @return array|bool
   */
  public static function getDataTypes(){
    try{
      $dbClass = new ReflectionClass(__CLASS__);
      return $dbClass->getConstants();
    }catch(ReflectionException $error){
      ErrorManager::onErrorRoute($error);
      return false;
    }
  }

  /**
   * Execute sql query
   *
   * @param $select
   * @return array|bool
   */
	protected function query($select)
	{
		try{
			$this->dbInstance->beginTransaction();
			$modelDB = $this->dbInstance->prepare($select);
			$modelDB->execute();

			$result = $modelDB->fetchAll(PDO::FETCH_ASSOC);
			$this->dbInstance->commit();

			return $result;

		}catch(PDOException $error){
			$this->dbInstance->rollBack();

			ErrorManager::onErrorRoute($error);
			return false;
		}
	}

	/**
	 * Execute sql statement
	 *
	 * @return bool
	 */
	protected function execute($sql)
	{
		try{
			$this->dbInstance->beginTransaction();
			$result = $this->dbInstance->exec($sql);
			$this->dbInstance->commit();

			return $result;

		}catch(PDOException $error){
			$this->dbInstance->rollBack();

			ErrorManager::onErrorRoute($error);
			return false;
		}
	}
}