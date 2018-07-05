<?php

class UserModel_DB extends ModelDB
{
	private $id;
	private $email;
	private $birthDay;
	private $externalId;
	private static $singleton;

	function __construct ()
	{
		$this->id = 0;
		$matcher = get_object_vars($this);
		$model = parent::__construct($this, $matcher);
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