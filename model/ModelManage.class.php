<?php

class ModelManage
{
  private $pointer;
  public $schemaModel;

  function __construct($schemaModel, $pointer)
  {
    $this->pointer = $pointer;
    $this->schemaModel = $schemaModel;
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
    if(key_exists($name, $this->schemaModel)){
      return $this->schemaModel[$name];
    }

    return false;
  }
}