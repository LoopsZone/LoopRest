SELECT
TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
REFERENCED_TABLE_NAME = 'loopuser';

SELECT
TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
TABLE_NAME = 'vision';

SELECT TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'vision' and REFERENCED_TABLE_NAME IS NOT NULL

$this->dbConnect();
$sql = "INSERT INTO ".$table." (".$columns.")
VALUES (".$options.")";
//var_dump($sql);
if($this->dbConnect->query($sql) === False){
return false;
}else{
return true;
}
$result->close();

case 'bit':
(boolean)
if (ord($reg['lesionado']) == 1) {
echo "No esta lesionado";
}
else if (ord($reg['lesionado']) == 3) {
echo "Esta lesionado";
}
break;


while ($cont < 0){
if ($validRows[$i]['column'] == $columns[$j]){

$type = explode('(',$validRows[$i]['type']);

switch ($type[0]) {
case 'int':
$opt = (int) $options[$j];
break;
case 'varchar':
$opt = (string) $options[$j];
break;
case 'date':
$date = strtotime($options[$j]);
$opt = date('Y-m-d',$date);
break;
case 'double':
$opt = (double) $options[$j];
break;
default:
return false;
break;
}
$rows[$columns[$j]] = $opt;
}else{
$rows = false;
}
}


else{

$this->dbConnect();
$sql = "SELECT ".$fk[$i][0]." FROM ".$table." WHERE ".$condition." ORDER BY 1 DESC";
//var_dump($sql);
$result = $this->dbConnect->query($sql);
$count = $result->num_rows;
if ($count > 0) {
# code...
}
}


if ($fk[0] != false) {
$table = $fk[$i][2];
}else{
$tableR[$fk[$i][2]] = false;
if (in_array(null, $tableST, true)) {
$table = array_search(NULL, $tableST);
}else{
$go = false;
}
}

$go = true;
while ($go == true) {

$fk = $this->fk($table);

if ($fk != false) {

if (!isset($mapFK[$table])) {
$mapFK[]
}
$contFK = count($fk);
for ($i=0; $i < $contFK; $i++) {


}
}else{

$this->dbConnect();
$sql = "SELECT ".$fk[$i][0]." FROM ".$table." WHERE ".$condition." ORDER BY 1 DESC";
//var_dump($sql);
$result = $this->dbConnect->query($sql);
$count = $result->num_rows;
if ($count > 0) {
# code...
}
}
}


SELECT loopuser.id,proyects.id FROM "loopuser,proyects" WHERE loopuser.id = 12 and proyects.id = 1 ORDER BY 1 DESC


switch ($type) {
case 'int':
$opt = (int) $options[$i];
break;
case 'varchar':
$opt = (string) $options[$i];
break;
case 'date':
$date = strtotime($options[$i]);
$opt = date('Y-m-d',$date);
break;
case 'double':
$opt = (double) $options[$i];
break;
default:
return false;
break;
}
$rows[$coluns[$j]] = $opt;
$cont--;
$i++;