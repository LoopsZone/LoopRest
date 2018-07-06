<?php
/**
 * Created by PhpStorm.
 * User: vargasu
 * Date: 6/1/2018
 * Time: 3:48 PM
 */
class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$userMD = $model->getUserModelInstance;
  	$userMD->id = 'test';

    return $userMD;
  }

  public function putTesto()
  {
    return 'update';
  }

  public function postTesto()
  {
    return 'update';
  }
}