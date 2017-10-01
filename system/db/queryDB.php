<?php

class db
{
    //constructor de la clase $host,$userDB,$passUdb,$db
    public function __construct($host, $usuario, $clave, $db)
    {
        $this->conexion = new mysqli($host, $usuario, $clave, $db);
    }

    public function fkey($table)
    {

        function in_array_rec($needle, $haystack)
        {//existe valor = $
            if (in_array($needle, $haystack)) {
                return true;
            }

            foreach ($haystack as $elem) {
                if (is_array($elem) && in_array_rec($needle, $elem)) {
                    return true;
                }
            }
            return false;
        }

        function array_search_rec($search, $array, $keys = array())
        {//Devuelve indice que contenga valor = $search
            foreach ($array as $key => $value) {
                if (is_array($value)) {
                    $sub = array_find_deep($value, $search, array_merge($keys, array($key)));
                    if (count($sub)) {
                        return $sub;
                    }
                } elseif ($value === $search) {
                    return array_merge($keys, array($key));
                }
            }
            return array();
        }

        $fk = $this->fk($table);

        if ($fk != false) {

            $tableST = array();
            $tableR = array();

            $contFK = count($fk);
            for ($i = 0; $i < $contFK; $i++) {

                $tableST[$fk[$i][2]] = 'fk';//proyect_type,vision
            }

            $go = true;
            $table = $fk[0][2];

            while ($go == true) {

                $fk = $this->fk($table);//proyects

                if ($fk[0] != false) {

                    $tableR[$table] = array($fk[0][2] => 'fk');
                } else {
                    $tableR[$table] = false;
                }

                $tableST = array_replace_recursive($tableST, $tableR);

                if (in_array('fk', $tableST)) {

                    $table = array_search('fk', $tableST);
                } else if ($tableR[$table] != false and in_array_rec('fk', $tableR[$table])) {

                    $table = array_search_rec('fk', $tableST[$table]);
                    $table = $table[0];
                } else {

                    $go = false;
                }

                $tableR = array();
            }
        } else {
            $tableST[$table] = false;
        }
        return $tableST;
    }

    private function fk($table)
    {

        $sql = "SELECT  TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME 
				FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = '" . $table . "' 
				and REFERENCED_TABLE_NAME IS NOT NULL";
        //var_dump($sql);

        $result = $this->conexion->query($sql);
        $row = mysqli_fetch_row($result);

        if ($row != false) {

            $count = $result->num_rows;
            $rows = array();
            for ($i = 0; $i < $count; $i++) {

                $result->data_seek($i);
                $row = mysqli_fetch_row($result);
                $rows[$i] = $row;
            }
            return $rows;
        } else {
            return false;
        }
        $result->close();
    }

    public function insert($table, $columns, $options)
    {

        $table = explode(',', $table);
        $validRows = $this->tables($table[0]);

        $columns = explode(',', $columns);
        $options = explode(',', $options);

        $contR = count($validRows);
        $contC = count($columns);

        $rows = array();

        $fk = $this->fk($table);

        if ($fk != false) {

            $id = $table[0];
            while ($go != false) {

                $contFK = count($fk);
                for ($i = 0; $i < $contFK; $i++) {
                    //serch
                }
            }
        }

        for ($i = 0; $i < $contR; $i++) {

            for ($j = 0; $j < $contC; $j++) {

                if ($validRows[$i]['column'] == $columns[$j]) {

                    $type = explode('(', $validRows[$i]['type']);

                    switch ($type[0]) {
                        case 'int':
                            $opt = (int)$options[$j];
                            break;
                        case 'varchar':
                            $opt = (string)$options[$j];
                            break;
                        case 'date':
                            $date = strtotime($options[$j]);
                            $opt = date('Y-m-d', $date);
                            break;
                        case 'double':
                            $opt = (double)$options[$j];
                            break;
                        default:
                            return false;
                            break;
                    }
                    $rows[$columns[$j]] = $opt;
                }
            }
        }
        $result->close();
        return $rows;
    }

    //Guardar nuevos datos en la base de datos

    public function tables($table)
    {
        $sql = "SHOW COLUMNS FROM " . $table;
        $result = $this->conexion->query($sql);
        $count = $result->num_rows;
        $rows = array();
        for ($i = 0; $i < $count; $i++) {
            $result->data_seek($i);
            $row = mysqli_fetch_row($result);
            $rows[$i]['column'] = $row[0];
            $rows[$i]['type'] = $row[1];
            $rows[$i]['key'] = $row[3];
        }
        $result->close();
        return $rows;
    }

    //Serch en una tabla

    public function serch($table, $condition, $print)
    {

        $table = explode(',', $table);
        $table = $table[0];
        if (isset($table[1])) {
            $id = $table[1];
        }

        $columns = $this->tables($table);
        $contC = count($columns);
        $col = '';
        for ($i = 0; $i < $contC; $i++) {
            $co = $columns[$i]['column'];
            if ($i < 1) {
                $col = $col . $table . '.' . $co;
            } else {
                $col = $col . ',' . $table . '.' . $co;
            }
        }
        $columns = $col;

        $sql = "SELECT " . $columns . " FROM " . $table . " WHERE " . $condition . " ORDER BY 1 DESC";
        //var_dump($sql);

        $result = $this->conexion->query($sql);
        $count = $result->num_rows;
        if ($count > 0) {
            if ($print == True) {
                $column = explode(',', $columns);
                $rows = array();
                $contR = count($column);
                for ($i = 0; $i < $count; $i++) {
                    $row = mysqli_fetch_row($result);
                    $result->data_seek($i);
                    for ($j = 0; $j < $contR; $j++) {
                        $columna = $column[$j];
                        $rows[$i][$columna] = $row[$j];
                    }
                }
                return $rows;
            } else {
                return true;
            }
        } else {
            return false;
        }
        $result->close();
    }

    public function update($table, $campos, $options)
    {
        $sql = "UPDATE " . $table . " SET " . $campos . " WHERE " . $options;
        if ($this->conexion->query($sql) === False) {
            echo 'Update ' . $options . ' in ' . $columns . ' in ' . $table . '</br>';
        } else {
            return $result = 1;
        }
        $result->close();
    }

    //Borrar datos  de la base de datos
    public function deleted($table, $columns, $options)
    {
        for ($i = 0; $i < count($options); $i++) {
            $sql = "DELETE FROM " . $table . " WHERE " . $columns . " = '" . $options . "'";
            if ($this->conexion->query($sql) === TRUE) {
                if (mysqli_affected_rows($this->conexion)) {
                    echo $options[$i] . "deleted" . "</br>";
                } else {
                    echo $options[$i] . "don´t deleted" . $this->conexion->error . "</br>";
                }
            }
        }
        $result->close();
    }

    //crear tablas
    public function newTable($table)
    {
        //generar Sql
        $sql = "CREATE TABLE IF NOT EXISTS `" . $table . "` 
		(`ID` int(11) NOT NULL,PRIMARY KEY (`ID`)) 
		ENGINE=InnoDB DEFAULT CHARSET=latin1;";
        //fin Sql
        if ($this->conexion->query($sql) === TRUE) {
            echo "New table successful";
        } else {
            echo "New table error " . $this->conexion->error;
        }
        $result->close();
    }

    //add campos a una tabla
    public function addColumns($table, $column)
    {
        $sql = "ALTER TABLE " . $table . " ADD " . $column . " CHAR(30)";
        if ($this->conexion->query($sql) === TRUE) {
            if ($this->conexion->query($sql) === TRUE) {
                echo 'Add columns' . $table;
            } else {
                echo 'error Add columns' . $table;
            }
        }
        $result->close();
    }

    //Delete campos a una tabla
    public function deleteColumns($table, $column)
    {
        $sql = "ALTER TABLE " . $table . " DROP " . $column;
        if ($this->conexion->query($sql) === TRUE) {
            echo 'delete columns ' . $table;
        } else {
            echo 'error delete columns ' . $table;
        }
        $result->close();
    }
}

?>
