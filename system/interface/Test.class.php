<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$userMD = $model->getUserInstance;

  	$projects = $userMD->query()->registry();
  	$email = $projects->email;
	  $projects->name = 'Mario VU';
    return $projects;
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