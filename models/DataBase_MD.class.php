<?php

class DataBase_MD
{
	private static $singleton;
	
	public static function getInstance ()
	{
		if(is_null(self::$singleton)) {
			self::$singleton = new DataBase_MD();
		}
		
		return self::$singleton;
	}
}