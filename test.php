<?php

function displayPathtoPrincess($grid){
  $princes = findCharacter("p", $grid);
  $mario = findCharacter("m", $grid);
  $result = go_To($mario, $princes);

  echo $result;
  var_dump($mario);
  var_dump($princes);
}

function findCharacter($character, $grid){
  $x = 0;
  $coords = array();
  foreach($grid as $rows => $find){
    $scan = str_split($find);
    $found = array_search($character, $scan);
    if($found){
      $coords['X'] = $x;
      $coords['Y'] = $found;
      break;
    }
    $x++;
  }
  return $coords;
}


function go_To($tracker, $target){
  $execute = '';
  $xSteps['true'] = 'UP,';
  $xSteps['false'] = 'DONW,';
  $ySteps['true'] = 'LEFT,';
  $ySteps['false'] = 'RIGHT,';

  $tr = array_keys($tracker);
  $ta = array_keys($target);

  if($tr == $ta){
    foreach($ta as $axis){
      $taAxis = $target[$axis];
      $trAxis = $tracker[$axis];

      $step = ($trAxis > $taAxis);
      $j = abs($trAxis - $taAxis);
      for($i = 0; $i < $j; $i++)
      {
        if($axis = 'X'){
          $exe = $xSteps;
        } else {
          $exe = $ySteps;
        }

        $execute .= $exe["{$step}"];
      }
    }

    return rtrim($execute, ',') ;
  }

  return 'Space - time error';
}

$grid[] = "---";
$grid[] = "-m-";
$grid[] = "--p";


displayPathtoPrincess($grid);

?>
