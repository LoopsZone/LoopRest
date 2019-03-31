<?php

class Routes_MD
{
	const ID = 'id';
	const NAME = 'name';
	const NEED_TK = 'needTK';
	const FRIENDLY_URL = 'friendlyURL';

	private static $instance;
	public static function getInstance()
	{
		if(is_null(self::$instance)){
			self::$instance = ModelDB::created(self::class, function($table){
				$table->int(self::ID)->notNull();
				$table->int(self::ID)->autoIncrement();
				$table->int(self::ID, 55)->primaryKey();

				$table->varchar(self::NAME, 55);
				$table->bit(self::NEED_TK);
				$table->bit(self::FRIENDLY_URL);
			});
		}

		return self::$instance;
	}
}