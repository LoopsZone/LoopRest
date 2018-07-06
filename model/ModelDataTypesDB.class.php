<?php

class ModelDataTypesDB
{
	public $column;
	public $schema;
	public $modelManage;

	function __construct (&$types, &$column, $modelManage)
	{
		$this->schema = &$types;
		$this->column = &$column;
		$this->modelManage = $modelManage;
	}
	
	/**
	 * Null available value in column
	 */
	public function nullAble()
	{
		$this->schema[$this->modelManage][$this->column]['null'] = true;
	}
	
	/**
	 * Primary key column type
	 */
	public function primaryKey()
	{
		$this->schema[$this->modelManage][$this->column]['primaryKey'] = true;
	}
	
	/**
	 * Auto increment column property
	 */
	public function autoIncrement()
	{
		$this->schema[$this->modelManage][$this->column]['autoIncrement'] = true;
	}

	/**
	 * Set default column value
	 *
	 * @param $value
	 */
	public function defaultValue($value)
	{
		$this->schema[$this->modelManage][$this->column]['default'] = $value;
	}
}