<?php

class ModelDB
{
	public $schema;
	public static $schemaName;
	public static $schemaModel;
	public static $modelManage;

	public static function created($object, $closure)
	{
    $connexionDB = new AccessDB();
    self::$modelManage = get_class($object);
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
  
  function __call($type, $arguments)
  {
	  if(key_exists(strtoupper($type), DB::getDataTypes())){
	  	self::$schemaName = $arguments[0];
		
		  $updateLength = ($arguments[1]) ? $arguments[1] : 0;
	  	$lengthValue = (self::$schemaModel[self::$modelManage][self::$schemaName]['length'])
			  ? self::$schemaModel[self::$modelManage][self::$schemaName]['length'] : 0;
	  	$length = ($updateLength) ? $updateLength : $lengthValue;

	  	self::$schemaModel[self::$modelManage][self::$schemaName]['type'] = $type;
		  self::$schemaModel[self::$modelManage][self::$schemaName]['length'] = $length;

		  return $this->schema;
	  }

	  return false;
  }
	
	function __set($name, $value)
	{
		if(property_exists($this, $name)){
			$this->$name = $value;
			return true;
		}

		return false;
	}

	function __get($name)
	{
		if(property_exists($this, $name)){
			return $this->$name;
		}
		
		return false;
	}
}