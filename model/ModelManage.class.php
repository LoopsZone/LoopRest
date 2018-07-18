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
    return $this->schemaModel->self->update('1', [$name => $value]);
  }

  function __get($name)
  {
    $data = $this->schemaModel->self->query([

    ])->row;

    if(key_exists($name, $data[$this->pointer])){
      return $data[$this->pointer][$name];
    }

    return false;
  }
}