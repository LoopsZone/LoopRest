<?php

class User_MD
{
	const ID = 'id';
	const NAME = 'name';
	const EMAIL = 'email';
	const BIRTHDAY = 'birthday';
	const EXTERNAL_ID = 'externalId';

	private static $instance;
	public static function getInstance()
	{
		if(is_null(self::$instance)){
			self::$instance = ModelDB::created(self::class, function($table){
				$table->int(self::ID)->notNull();
				$table->int(self::ID)->autoIncrement();
				$table->int(self::ID, 55)->primaryKey();

				$table->varchar(self::NAME, 55);
				$table->varchar(self::EMAIL, 55);
				$table->date(self::BIRTHDAY);
				$table->varchar(self::EXTERNAL_ID, 55);
			});
		}

		return self::$instance;
	}
}