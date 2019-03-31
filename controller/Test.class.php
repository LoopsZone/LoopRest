<?php

class Test
{
  public function testo()
  {
  	$projectsMD = Model::projectsInstance();
    $issuesMD = Model::issuesInstance();

    $projects = $projectsMD->query();
    $issue = $issuesMD->query()->registry();

    return $projects;
  }

  public function postTesto()
  {
    $projectsMD = Model::projectsInstance();
    $issuesMD = Model::issuesInstance();

    $projects = $projectsMD->query();
    $issue = $issuesMD->query()->registry();

    return $projects;
  }
}