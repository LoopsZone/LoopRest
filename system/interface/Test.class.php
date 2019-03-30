<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$projectsMD = $model->projectsInstance();
    $issuesMD = $model->issuesInstance();

    $projects = $projectsMD->query();
    $issue = $issuesMD->query()->registry();

    return $projects;
  }

  public function postTesto()
  {
    $model = Model::getInstance();
    $projectsMD = $model->projectsInstance();
    $issuesMD = $model->issuesInstance();

    $projects = $projectsMD->query();
    $issue = $issuesMD->query()->registry();

    return $projects;
  }
}