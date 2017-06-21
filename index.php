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
require_once "autoload.php";

$http = new Input();
$validate = $http->request();
$response = $http->output($validate);
echo $response;

/**
 * Loop PHP platform for the organization
 *
 * @package  Loop REST
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */