<?php

function displayPathtoPrincess($grid){
  $princes = findPosition("p", $grid);
  $mario = findPosition("m", $grid);
  $result = go_To($mario, $princes);

  var_dump($result);
  var_dump($mario);
  var_dump($princes);
}

function findPosition($find, $grid)
{
  $x = 0;
  $axes = array();
  foreach ($grid as $rows => $yAxis) {

    if (!is_array($yAxis)) {
      $yAxis = str_split($yAxis);
    }

    $y = array_search($find, $yAxis);
    if ($y) {
      $axes['X'] = $x;
      $axes['Y'] = $y;
      break;
    }
    $x++;
  }
  return $axes;
}


function go_To($tracker, $target){

  $execute = '';
  $xSteps['true'] = 'UP' . "\n";
  $xSteps['false'] = 'DOWN' . "\n";
  $ySteps['true'] = 'LEFT' . "\n";
  $ySteps['false'] = 'RIGHT' . "\n";

  $trackerAxes = array_keys($tracker);
  $targetAxes = array_keys($target);

  if ($trackerAxes == $targetAxes) {
    foreach ($targetAxes as $axis) {

      $targetPosition = $target[$axis];
      $trackerPosition = $tracker[$axis];

      $decision = ($trackerPosition > $targetPosition);
      $step = ($decision) ? 'true' : 'false';
      $steps = abs($trackerPosition - $targetPosition);
      for ($i = 0; $i < $steps; $i++)
      {
        if ($axis == 'X') {
          $exe = $xSteps;
        } else {
          $exe = $ySteps;
        }

        $execute .= $exe[$step];
      }
    }

    return $execute;
  }

  return 'Space - time error';
}

$grid[] = "---";
$grid[] = "--p";
$grid[] = "---";
$grid[] = "---";
$grid[] = "-m-";
$grid[] = "---";
$grid[] = "---";



displayPathtoPrincess($grid);

?>
