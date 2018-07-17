<?php

class ModelDataTypesDB
{
  private $column;
	public $schemaModel;
	public $modelManage;

	function __construct (&$schemaModel, &$column, $modelManage)
	{
    $this->column = &$column;
		$this->schemaModel = &$schemaModel;
		$this->modelManage = $modelManage;
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
    $table = get_class($value);
    $column = property_exists();
    $this->schemaModel[$this->modelManage][$this->column]['foreignKey'] = "{$table}($column)";
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