<?php

class DB
{
	function __construct ($engine, $host, $db, $user, $password)
	{
		try {
			$dbInstance = new PDO("{$engine}: host={$host}; dbname={$db}", $user, $password);

			$modelDB = $dbInstance->prepare('SELECT * from `users_lp`');
			$modelDB->execute();

			$result = $modelDB->fetchAll(PDO::FETCH_ASSOC);

			echo json_encode($result, JSON_PRETTY_PRINT);
			
		}catch (PDOException $e){
			print "¡Error!: " . $e->getMessage() . "<br/>";
			die();
		}
	}
}