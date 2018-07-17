<?php

class ModelDB extends AccessDB
{
	public $schema;
	private static $schemaColumn;
	private static $schemaModel;
	private static $modelManage;

  function __construct(ModelDataTypesDB $schema)
  {
    parent::__construct();
    $this->schema = $schema;
  }

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
    $modifiers = new ModelDataTypesDB(self::$schemaModel, self::$schemaColumn, self::$modelManage);
    $modelDB = new ModelDB($modifiers);

		$closure($modelDB);
    if(!$modelDB->tableExist(self::$modelManage)){
      $modelDB->newTable(self::$modelManage, self::$schemaModel[self::$modelManage]);
    }

    return $modelDB;
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
        self::$schemaColumn = $arguments[0];
        $updateLength = ($arguments[1]) ? $arguments[1] : 0;
        $currentLength = self::$schemaModel[self::$modelManage][self::$schemaColumn]['length'];

        $lengthValue = ($currentLength) ? $currentLength : 0;
        $length = ($updateLength) ? $updateLength : $lengthValue;

        self::$schemaModel[self::$modelManage][self::$schemaColumn]['type'] = $type;
        self::$schemaModel[self::$modelManage][self::$schemaColumn]['length'] = $length;

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
    return self::$schemaModel[$this->schema->modelManage];
  }

  /**
   * Obtain primary column name
   *
   * @return bool|int|string
   */
  public function primaryColumn()
  {
    foreach($this->schema() as $column => $properties){
      if(key_exists('primaryKey', $properties)){
        return $column;
      }
    }

    return false;
  }

  /**
   * Consult a model match values
   *
   * @param array $columns
   * @return object
   */
  public function getModelValue($columns = [])
  {
    $result = parent::getTableValue($this->schema->modelManage, $columns);
    $modelManage = new class{
      public $row;
      public $self;
      function registry($pointer = 0){
        return new ModelManage($this, $pointer);
      }
    };

    $modelManage->self = $this;
    $modelManage->row = $result;

    return $modelManage;
  }

  /**
   * Insert new registry in current model
   *
   * @param $columnsMatch
   * @return bool
   */
  public function insert($columnsMatch)
  {
	  return parent::insert($this->schema->modelManage, $columnsMatch);
  }
}