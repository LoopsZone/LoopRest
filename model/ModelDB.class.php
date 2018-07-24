<?php

class ModelDB extends AccessDB
{
	public $schema;
	private static $schemaModel;

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
    $modifiers = new ModelDataTypesDB(self::$schemaModel, $object);
    $modelDB = new ModelDB($modifiers);

		$closure($modelDB);
    if(!$modelDB->tableExist($object)){
      $modelDB->newTable($object, self::$schemaModel[$object]);
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
        $this->schema->column = $arguments[0];
        $updateLength = (key_exists(1, $arguments)) ? $arguments[1] : 0;
        $currentLength = self::$schemaModel[$this->schema->modelManage][$this->schema->column]['length'];

        $lengthValue = ($currentLength) ? $currentLength : 0;
        $length = ($updateLength) ? $updateLength : $lengthValue;

        self::$schemaModel[$this->schema->modelManage][$this->schema->column]['type'] = $type;
        self::$schemaModel[$this->schema->modelManage][$this->schema->column]['length'] = $length;

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
   * Obtain foreign key column name
   *
   * @return array|bool
   */
  public function fkColumn()
  {
    foreach($this->schema() as $column => $properties){
      if(key_exists('foreignKey', $properties)){
        return array_merge([
          'column' => $column,
          'table' => $this->schema->modelManage
        ], $properties);
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
  public function query($columns = [])
  {
    $modelManage = new class($this){
      public $row;
      public $self;

      function __construct($parent){
        $this->self = $parent;
      }

      function registry($pointer = 0){
        return new ModelManage($this, $pointer);
      }
    };

    if(count($columns)){
	    $modelManage->row = parent::queryRegistry($this->schema->modelManage, $columns);
    }else{
	    $model = Model::getInstance();
	    $routeMD = $model->getRouteInstance;
	    if($this->schema->modelManage == CoreConfig::DB_USER_TB){
		    $columns = [CoreConfig::DB_USER_COLUMN => $routeMD->getUserLogin()];
		    $modelManage->row = parent::queryRegistry($this->schema->modelManage, $columns);
	    }else{
		    $map = $this->mapQueryModel($this->schema->modelManage);

		    $select = $this->genSelectsJoins($map);
		    $modelManage->row = parent::query($select);
	    }
    }

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
	  return parent::newRegistry($this->schema->modelManage, $columnsMatch);
  }

  /**
   * Update registry in current model with column call
   *
   * @see ModelManage::__set()
   * @param $primaryKey
   * @param $columnsUpdate
   * @return bool
   */
  public function update($primaryKey, $columnsUpdate)
  {
    $primaryKey = [$this->primaryColumn(), $primaryKey];
    return parent::updateRegistry($this->schema->modelManage, $columnsUpdate, $primaryKey);
  }
}