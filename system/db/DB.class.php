<?php

class DB
{
	function __construct ($engine, $host, $db, $user, $password)
	{
		try {
			$dbInstance = new PDO("{$engine}: host={$host}; dbname={$db}", $user, $password);

			$modelDB = $dbInstance->prepare('CALL test');
			$modelDB->execute();

			return $modelDB->fetchAll(PDO::FETCH_ASSOC);
		}catch (PDOException $e){
			print "¡Error!: " . $e->getMessage() . "<br/>";
			die();
		}
	}
}