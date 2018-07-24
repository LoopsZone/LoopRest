<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$projectsMD = $model->getProjectsInstance;
    $issuesMD = $model->getIssuesInstance;

    $projects = $projectsMD->query();
    $issue = $issuesMD->query()->registry();

	  $issue->name = 'change';

    return $projects;
  }
}