<?php
/*
|---------------------------------------------------------------------------
|Web services REST Loop in server PHP
|---------------------------------------------------------------------------
|	use request to methods http GET,POST,PUT,DELETE
|	METHOD | ACTION
|	|GET   : |Response | request in JSON data for to use
|	|POST  : |Type of input data in JSON to use Web services to store data
|	|PUT   : |Type of input data in JSON to use Web services to update data
|	|DELETE: |Type of input data in JSON to use Web services to delete data
|___________________________________________________________________________
*/
define('DIR', __DIR__);
require_once DIR . '/auth/Input.class.php';

$http = new Input();
$response = $http->request();//Input data type JSON in the system
$result = $http->output($response);
echo $result;
/**
 * Loop PHP platform for the organization
 *
 * @package  Loop REST
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */