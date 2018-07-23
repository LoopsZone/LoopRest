<?php

class Test
{
  public function testo()
  {
  	$model = Model::getInstance();
  	$projectsMD = $model->getProjectsInstance;
    $issuesMD = $model->getIssuesInstance;

    $projects = $projectsMD->query();
    $issues = $issuesMD->query();

    return $projects;
  }
}