<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$projectsMD = $model->getProjectsInstance;
    $issuesMD = $model->getIssuesInstance;

    $projects = $projectsMD->query();
    foreach($projects->row as $pointer => $properties){
      $currentProject = $projects->registry($pointer);
      $issues = $issuesMD->query([Issues_MD::OWNER => $currentProject->id]);
    }

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