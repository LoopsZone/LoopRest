<?php

class UserModel_DB
{
	private static $singleton;

	public static function getInstance()
	{
		if(is_null(self::$singleton)){
			self::$singleton = ModelDB::created(self, function($table){
				$table->int('id')->nullAble();
				$table->int('id')->autoIncrement();
				$table->int('id')->defaultValue(5);
				$table->int('id', 55)->primaryKey();
				
				$table->varchar('email');
				$table->date('birthDay');
				$table->varchar('externalId');
			});
		}

		return self::$singleton;
	}
}