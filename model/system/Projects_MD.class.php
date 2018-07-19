<?php

class Projects_MD
{
	const ID = 'id';
	const NAME = 'name';
  const TYPE = 'type';
  const OWNER = 'owner';
	const DESCRIPTION = 'description';

	private static $instance;
	public static function getInstance()
	{
		if(is_null(self::$instance)){
			self::$instance = ModelDB::created(self::class, function($table){
				$table->int(self::ID)->notNull();
				$table->int(self::ID)->autoIncrement();
				$table->int(self::ID)->primaryKey();

				$table->varchar(self::NAME, 20);
				$table->int(self::TYPE);
				$table->int(self::OWNER)->foreignKey(User_MD::class);
				$table->varchar(self::DESCRIPTION, 125);
			});
		}

		return self::$instance;
	}
}