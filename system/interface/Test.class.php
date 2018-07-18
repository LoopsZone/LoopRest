<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$userMD = $model->getUserInstance;

    $user = $userMD->query([
      User_MD::EMAIL => 'hemma.hvu@gmail.com'
    ])->registry();

    $id = $user->id;
    $user->name = 'Mario VU';
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