<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$userMD = $model->getUserInstance;
  	$projectsMD = $model->getProjectsInstance;

    $user = $userMD->query([
      User_MD::EMAIL => 'hemma.hvu@gmail.com'
    ])->registry();

    $id = $user->id;
    $user->name = 'Mario VU';
    return $user;
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