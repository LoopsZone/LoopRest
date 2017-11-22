<?php
/*
|---------------------------------------------------------------------------
|Web services REST Loop in server PHP
|---------------------------------------------------------------------------
|	use a request with the methods http GET,POST,PUT,DELETE
|	METHOD | ACTION
|
|	|GET   : |Response to the request in JSON data
|	|POST  : |Input data type in JSON to consume Web services to store data
|	|PUT   : |Input data type in JSON to consume Web services to update data
|	|DELETE: |Input data type in JSON to consume Web services to delete data
|___________________________________________________________________________
*/
require_once 'autoLoad.classes.php';

$http = new Input;
$http->request();
$http->response();

/**
 * Loop PHP platform for the organization
 *
 * @package  Loop REST
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */