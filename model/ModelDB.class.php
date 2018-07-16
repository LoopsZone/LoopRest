<?php

class ModelDB extends AccessDB
{
	public $schema;
	private static $schemaName;
	private static $schemaModel;
	private static $modelManage;

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
    $modelDB = new ModelDB(new ModelDataTypesDB(self::$schemaModel, self::$schemaName, self::$modelManage));

		$closure($modelDB);
    if(!$modelDB->connexionDB->tableExist(self::$modelManage)){
      $modelDB->connexionDB->newTable(self::$modelManage, self::$schemaModel[self::$modelManage]);
    }

    return $modelDB;
	}

	function __construct(ModelDataTypesDB $schema)
  {
  	parent::__construct();
    $this->schema = $schema;
  }

  /**
   * Call to design any column and its format for the current model
   *
   * @param $type
   * @param $arguments
   * @return bool|ModelDataTypesDB
   */
  function __call($type, $arguments = [])
  {
	  if(key_exists(strtoupper($type), DB::getDataTypes())){
	    $countArguments = count($arguments);
      if($countArguments && $countArguments <= 2){
        self::$schemaName = $arguments[0];
        $updateLength = ($arguments[1]) ? $arguments[1] : 0;
        $currentLength = self::$schemaModel[self::$modelManage][self::$schemaName]['length'];

        $lengthValue = ($currentLength) ? $currentLength : 0;
        $length = ($updateLength) ? $updateLength : $lengthValue;

        self::$schemaModel[self::$modelManage][self::$schemaName]['type'] = $type;
        self::$schemaModel[self::$modelManage][self::$schemaName]['length'] = $length;

        return $this->schema;
      }
	  }

	  return false;
  }

  /**
   * Return current schema
   *
   * @return mixed
   */
  public function schema()
  {
    $schemaName = $this->schema->modelManage;
    return self::$schemaModel[$schemaName];
  }

  public function getModelValue($columns)
  {
	  $schemaName = $this->schema->modelManage;
  	return parent::getTableValue($schemaName, $columns);
  }

  public function insert($columnsMatch)
  {
	  $schemaName = $this->schema->modelManage;
	  return parent::insert($schemaName, $columnsMatch);
  }
	
	function __set($name, $value)
	{
	  $schemaName = $this->schema->modelManage;
		if(key_exists($name, self::$schemaModel[$schemaName])){
      self::$schemaModel[$schemaName][$name] = $value;

      return true;
		}

		return false;
	}

	function __get($name)
	{
    $connexionDB = new AccessDB();
    $schemaName = $this->schema->modelManage;
    $data = $connexionDB->getTableValue($schemaName, self::$schemaModel[$schemaName]);

    $schemaName = $this->schema->modelManage;
    self::$schemaModel[$schemaName] = $data;
    if(key_exists($name, self::$schemaModel[$schemaName])){
	    return self::$schemaModel[$schemaName][$name];
    }

    return false;
	}
}