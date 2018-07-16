<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$userMD = $model->getUserInstance;
  	
    $val = $userMD->id;

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