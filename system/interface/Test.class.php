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
    $testMD = $model->getTestModelInstance;

    $testMD->record(1);
    $val = $testMD->externalId;

    return $testMD->schema();
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