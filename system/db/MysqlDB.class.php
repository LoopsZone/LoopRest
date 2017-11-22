<?php

/**
 * Class db
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class MysqlDB
{
	private $conexion;
	
	public function __construct ($host, $user, $password, $db)
	{
		$this->conexion = new mysqli($host, $user, $password, $db);
	}
	
	/**
	 * Search data in mysql db
	 *
	 * @param $object
	 * @param $registry
	 * @param $print
	 * @return bool|array
	 */
	public function search ($object, $registry, $print)
	{
		if(isset($object) AND isset($registry)){
			
			$sql = "SELECT * FROM {$object} WHERE email = '{$registry}' ORDER BY 1 DESC";
			$result = $this->conexion->query($sql);
			$count = (!$result) ? 0 : $result->field_count;
			
			if($count > 0) {
				if($print) {
					$row = mysqli_fetch_row($result);
					for($i = 0; $i < $count; $i++) {
						$result->data_seek($i);
						$field = $result->fetch_field();
						$currentField = $field->name;
						$rows[$currentField] = $row[$i];
					}
					$this->conexion->close();
					return $rows;
				}else{
					$this->conexion->close();
					return true;
				}
			}else{
				$this->conexion->close();
				return false;
			}
		}
	}
	
	public function insert($object, $data)
	{
		if(isset($object) AND isset($data)) {
			
			$fields = $this->tableInfo($object);
			foreach($fields as $field){
				
				if(key_exists($field['column'], $data)){
					$colums[] = "`{$field['column']}`";
					$values[] = "`{$data[$field['column']]}`";
				}
			}
			
			$fields = implode(',', $colums);
			
			$sql = "INSERT INTO  {$object} (`users_id`, `external_Id`, `name`, `email`, `birthday`) VALUES ('3', '3', 'Test', 'test', '1994-06-02')";
			$result = $this->conexion->query($sql);
			$count = (!$result) ? 0 : $result->field_count;
			
			if($count > 0) {
				if($print) {
					$row = mysqli_fetch_row($result);
					for($i = 0; $i < $count; $i++) {
						$result->data_seek($i);
						$field = $result->fetch_field();
						$currentField = $field->name;
						$rows[$currentField] = $row[$i];
					}
					$this->conexion->close();
					return $rows;
				}else{
					$result->close();
					return true;
				}
			}else{
				$this->conexion->close();
				return false;
			}
		}
	}
	
	private function tableInfo ($table)
	{
		
		$sql = "SHOW COLUMNS FROM " . $table;//var_dump($sql);
		$result = $this->conexion->query($sql);
		$count = $result->num_rows;
		$rows = array();
		for($i = 0; $i < $count; $i++) {
			$result->data_seek($i);
			$row = mysqli_fetch_row($result);
			$rows[$i]['column'] = $row[0];
			$rows[$i]['type'] = $row[1];
			$rows[$i]['required'] = ($row[2] != 'NO');
			$rows[$i]['key'] = $row[3];
		}
		$result->close();
		return $rows;
	}
	
	private function map ($table, $id)
	{
		
		$tableST = array();
		$tableP = array();
		
		$fKey = $this->fk($table);
		if($fKey != FALSE) {
			
			$countFK = count($fKey);
			
			for($i = 0; $i < $countFK; $i++) {
				
				$tablePa = $fKey[$i][0];
				$tableCh = $fKey[$i][2];
				
				$tableP[$tableCh] = FALSE;
				
				$fk = $this->fk($tableCh);
				if($fk != FALSE) {
					
					$tableChild = $this->map($tableCh, $id);
					$tableP = array_replace_recursive($tableP, $tableChild);
				}
			}
			$tableST[$tablePa] = $tableP;
		} else {
			$tableST[$table] = FALSE;
		}
		return $tableST;
	}
	
	public function fk ($table)
	{
		
		$sql = "SELECT  TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
				FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = '{$table}' 
				and REFERENCED_TABLE_NAME IS NOT NULL";
		//var_dump($sql);
		
		$result = $this->conexion->query($sql);
		$row = mysqli_fetch_row($result);
		
		if($row != FALSE) {
			
			$count = $result->num_rows;
			$rows = array();
			for($i = 0; $i < $count; $i++) {
				
				$result->data_seek($i);
				$row = mysqli_fetch_row($result);
				$rows[$i] = $row;
			}
			
			$result->close();
			return $rows;
		} else {
			
			$result->close();
			return FALSE;
		}
	}
}