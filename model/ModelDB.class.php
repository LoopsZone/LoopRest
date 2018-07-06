<?php

class ModelDB
{
	public $schema;
	public static $schemaName;
	public static $schemaModel;
	public static $modelManage;

  /**
   * Manage model data base
   *
   * @param $object
   * @param $closure
   * @return ModelDB
   */
	public static function created($object, $closure)
	{
    self::$modelManage = $object;
    $connexionDB = new AccessDB();
    $modelDB = new ModelDB(new ModelDataTypesDB(self::$schemaModel, self::$schemaName, self::$modelManage));

		$closure($modelDB);
    if(!$connexionDB->tableExist(self::$modelManage)){
      $connexionDB->newTable(self::$modelManage, self::$schemaModel);
    }

    return $modelDB;
	}

	function __construct(ModelDataTypesDB $schema)
  {
    $this->schema = $schema;
  }

  /**
   * Call to design any column and its format for the current model
   *
   * @param $type
   * @param $arguments
   * @return bool|ModelDataTypesDB
   */
  function __call($type, $arguments)
  {
	  if(key_exists(strtoupper($type), DB::getDataTypes())){
	  	self::$schemaName = $arguments[0];
		  $updateLength = ($arguments[1]) ? $arguments[1] : 0;
		  $currentLength = self::$schemaModel[self::$modelManage][self::$schemaName]['length'];

	  	$lengthValue = ($currentLength) ? $currentLength : 0;
	  	$length = ($updateLength) ? $updateLength : $lengthValue;

	  	self::$schemaModel[self::$modelManage][self::$schemaName]['type'] = $type;
		  self::$schemaModel[self::$modelManage][self::$schemaName]['length'] = $length;

		  return $this->schema;
	  }

	  return false;
  }

	function __set($name, $value)
	{
		if(key_exists($name, self::$schemaModel[self::$modelManage])){
      self::$schemaModel[self::$modelManage][$name]['value'] = $value;

      return true;
		}

		return false;
	}

	function __get($name)
	{
    if(key_exists($name, self::$schemaModel[self::$modelManage])){
      if(key_exists('value', self::$schemaModel[self::$modelManage][$name])){
        return self::$schemaModel[self::$modelManage][$name]['value'];
      }
    }

    return false;
	}
}