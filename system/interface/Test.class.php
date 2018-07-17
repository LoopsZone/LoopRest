<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$userMD = $model->getUserInstance;

    $modelValue = $userMD->getModelValue([User_MD::EMAIL => 'hemma.hvu@gmail.com'])->registry();
    $id = $modelValue->id;
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