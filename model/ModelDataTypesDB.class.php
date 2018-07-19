<?php

class ModelDataTypesDB
{
  public $column;
  private $modelManage;
	private $schemaModel;

	function __construct (&$schemaModel, $modelManage)
	{
    $this->modelManage = $modelManage;
		$this->schemaModel = &$schemaModel;
	}

	function __get($name)
  {
    if(property_exists($this, $name)){
      return $this->$name;
    }

    return false;
  }

  /**
	 * Null available value in column
	 */
	public function notNull()
	{
		$this->schemaModel[$this->modelManage][$this->column]['null'] = false;
	}

	/**
	 * Primary key column type
	 */
	public function primaryKey()
	{
		$this->schemaModel[$this->modelManage][$this->column]['primaryKey'] = true;
	}

  /**
   * Set unique value
   */
  public function unique()
  {
    $this->schemaModel[$this->modelManage][$this->column]['unique'] = true;
  }

  /**
   * Set foreignKey column value
   *
   * @param $value
   */
  public function foreignKey($value)
  {
    $instance = $value::getInstance();
    $column = $instance->primaryColumn();
    $this->schemaModel[$this->modelManage][$this->column]['foreignKey'] = "FOREIGN KEY ({$column}) REFERENCES {$value}({$column})";
  }

	/**
	 * Auto increment column property
	 */
	public function autoIncrement()
	{
		$this->schemaModel[$this->modelManage][$this->column]['autoIncrement'] = true;
	}

	/**
	 * Set default column value
	 *
	 * @param $value
	 */
	public function defaultValue($value)
	{
		$this->schemaModel[$this->modelManage][$this->column]['default'] = $value;
	}

  /**
   * Set is column contain sensible information
   */
	public function sensitiveInfo()
  {
    $this->schemaModel[$this->modelManage][$this->column]['sensitiveInfo'] = true;
  }

  /**
   * Set current column value
   *
   * @param $value
   */
	public function value($value)
  {
    $this->schemaModel[$this->modelManage][$this->column]['value'] = $value;
  }
}