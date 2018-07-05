<?php

class ModelDB
{
  private $schema;
  private $modelSchema;

	public static function created($object, $closure)
	{
    $connexionDB = new AccessDB();
    $objectName = get_class($object);
    $modelDB = new ModelDB($objectName);
    if($connexionDB->tableExist($objectName)){
      $closure($modelDB);
    }
	}

	function __construct($schema)
  {
    $this->schema = $schema;
  }

  public function int($name, $length = 0)
  {

  }
}