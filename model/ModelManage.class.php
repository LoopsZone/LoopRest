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
    if(@$data[$this->pointer]){
	    if(key_exists($property, $data[$this->pointer])){
		    return $data[$this->pointer][$property];
	    }
    }

    return false;
  }

  /**
   * Delete current pointer registry
   *
   * @return mixed
   */
  public function delete()
  {
    $columnName = $this->schemaModel->self->primaryColumn();

    $data = $this->schemaModel->row;
    $primaryKey = $data[$this->pointer][$columnName];
    $result = $this->schemaModel->self->delete($primaryKey);

    if($result){
      unset($this->schemaModel->row[$this->pointer]);
      $this->schemaModel->row = array_values($this->schemaModel->row);
    }

    return $result;
  }
}