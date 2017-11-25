<?php

class DB
{
	function __construct ()
	{
		try {
			
			$mbd = new PDO('mysql:host=localhost;dbname=looprest', 'root', '');
			
			$gsent = $mbd->prepare('SELECT * from `user`');
			$gsent->execute();
			return $gsent->fetchAll(PDO::FETCH_ASSOC);
		}catch (PDOException $e){
			print "¡Error!: " . $e->getMessage() . "<br/>";
			die();
		}
	}
}