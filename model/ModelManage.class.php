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

  function __set($property, $value)
  {
    $columnName = $this->schemaModel->self->primaryColumn();

	  $data = $this->schemaModel->row;
	  $primaryKey = $data[$this->pointer][$columnName];
    $this->schemaModel->row[$this->pointer][$property] = $value;

    return $this->schemaModel->self->update($primaryKey, [$property => $value]);
  }

  function __get($property)
  {
    $data = $this->schemaModel->row;
    if(key_exists($property, $data[$this->pointer])){
      return $data[$this->pointer][$property];
    }

    return false;
  }
}