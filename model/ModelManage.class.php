<?php

class ModelManage
{
  private $pointer;
  private $schemaModel;

  function __construct($schemaModel, $pointer)
  {
    $this->pointer = $pointer;
    $this->schemaModel = $schemaModel;
  }

  function __set($name, $value)
  {
	  $data = $this->schemaModel->row;
	  $columnName = $this->schemaModel->self->primaryColumn();
	  $primaryKey = $data[$this->pointer][$columnName];

    return $this->schemaModel->self->update($primaryKey, [$name => $value]);
  }

  function __get($name)
  {
    $data = $this->schemaModel->row;

    if(key_exists($name, $data[$this->pointer])){
      return $data[$this->pointer][$name];
    }

    return false;
  }
}