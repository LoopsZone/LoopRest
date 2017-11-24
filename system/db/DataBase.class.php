<?php

interface DataBase
{
	public function __construct ($host, $user, $password, $db);
	
	public function query($sql, $print);
	
	public function search ($object, $registry, $print = true);
	
	public function insert($object, $data);
	
	public function tableInfo($table);

	public function close();
}