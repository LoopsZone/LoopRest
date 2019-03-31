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
		$this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpNull] = false;
	}

	/**
	 * Primary key column type
	 */
	public function primaryKey()
	{
		$this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpPrimaryKey] = true;
	}

  /**
   * Set unique value
   */
  public function unique()
  {
    $this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpUnique] = true;
  }

  /**
   * Set foreignKey column value
   *
   * @param $value
   */
  public function foreignKey($model)
  {
    $instance = $model::getInstance();
    $column = $instance->primaryColumn();
    $this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpForeignKey] = [$model, $column];
  }

	/**
	 * Auto increment column property
	 */
	public function autoIncrement()
	{
		$this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpAutoIncrement] = true;
	}

	/**
	 * Set default column value
	 *
	 * @param $value
	 */
	public function defaultValue($value)
	{
		$this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpDefault] = $value;
	}

  /**
   * Set is column contain sensible information
   */
	public function sensitiveInfo()
  {
    $this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpSensitiveInfo] = true;
  }

  /**
   * Set current column value
   *
   * @param $value
   */
	public function value($value)
  {
    $this->schemaModel[$this->modelManage][$this->column][GlobalSystem::ExpValue] = $value;
  }
}