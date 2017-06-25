<?php

/**
 * Class db
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class db
{
    public function __construct($host, $user, $password, $db)
    {
        $this->conexion = new mysqli($host, $user, $password, $db);
    }

    public function search($table, $print)
    {

        $table = explode('/', $table);

        if (isset($table[1]) AND isset($table[2])) {

            $email = $table[2];
            $id = $table[1];
            $table = $table[0];

            $condition = "fbId = '{$id}', and email = '{$email}'";

            $columns = $this->tableInfo($table);
            $countC = count($columns);
            $col = '';

            for ($i = 0; $i < $countC; $i++) {

                $co = $columns[$i]['column'];
                if ($i < 1) {
                    $col = $col . $table . '.' . $co;
                } else {
                    $col = $col . ',' . $table . '.' . $co;
                }     //|
            }         //|
            //|
            //SQL----//|
            $columns = $col;
            $sql = "SELECT {$columns} FROM {$table} WHERE {$condition} ORDER BY 1 DESC";
            //var_dump($sql);

            $result = $this->conexion->query($sql);
            $count = $result->num_rows;
            if ($count > 0) {
                if ($print == TRUE) {
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
                    $result->close();
                    return $rows;
                } else {
                    $result->close();
                    return TRUE;
                }
            } else {
                $result->close();
                return FALSE;
            }
        }

        if (isset($table[0]) AND isset($table[1])) {

            $tableSearch = $table[0];
            $id = $table[1];

            $map = $this->map($tableSearch, $id);

            if ($map != FALSE) {

                return $map;
            }
        }
    }

    private function tableInfo($table)
    {

        $sql = "SHOW COLUMNS FROM " . $table;//var_dump($sql);
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

    private function map($table, $id)
    {

        $tableST = array();
        $tableP = array();

        $fKey = $this->fk($table);
        if ($fKey != FALSE) {

            $countFK = count($fKey);

            for ($i = 0; $i < $countFK; $i++) {

                $tablePa = $fKey[$i][0];
                $tableCh = $fKey[$i][2];

                $tableP[$tableCh] = FALSE;

                $fk = $this->fk($tableCh);
                if ($fk != FALSE) {

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

    public function fk($table)
    {

        $sql = "SELECT  TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME 
				FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = '{$table}' 
				and REFERENCED_TABLE_NAME IS NOT NULL";
        //var_dump($sql);

        $result = $this->conexion->query($sql);
        $row = mysqli_fetch_row($result);

        if ($row != FALSE) {

            $count = $result->num_rows;
            $rows = array();
            for ($i = 0; $i < $count; $i++) {

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