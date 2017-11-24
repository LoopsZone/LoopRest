<?php

class DB
{
	function __construct ()
	{
		try {
			
			$mbd = new PDO('mysql:host=localhost;dbname=looprest', 'root', '');
			foreach($mbd->query('SELECT * from FOO') as $fila) {
				$rows[] = $fila;
			}
			return $rows;
		}catch (PDOException $e){
			print "¡Error!: " . $e->getMessage() . "<br/>";
			die();
		}
	}
}