<?php

class UserModel_DB implements ModelDB_Interface
{
	private $id;
	private $email;
	private $birthDay;
	private $externalId;

	private static $singleton;

	function __construct ()
	{
		ModelDB::created($this, function($table){
		  $table->int('id');
		  $table->varchar('email');
		  $table->date('birthDay');
		  $table->varchar('externalId');
    });
	}

	public static function getInstance()
	{
		if(is_null(self::$singleton)){
			self::$singleton = new UserModel_DB();
		}

		return self::$singleton;
	}

	function __set($name, $value)
	{
		if(property_exists($this, $name)){
			$this->$name = $value;
			return true;
		}

		return false;
	}

	function __get($name)
	{
		if(property_exists($this, $name)){
			return $this->$name;
		}

		return false;
	}
}