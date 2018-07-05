<?php

class ModelDB
{
	function __construct($object, $matchers = [])
	{
		$matcher = [];
		$object = get_class($object);
		$connexionDB = new AccessDB();

		if($connexionDB->tableExist($object)){
			foreach($matchers as $property => $value){
				if(!is_null($value)){
					$matcher[$property] = $value;
				}
			}
		}else{
			$newTable = $connexionDB->newTable($object);
		}

		return $connexionDB->getTableValue($object, $matcher);
	}
}