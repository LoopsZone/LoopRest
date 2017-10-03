<?php

class Views_MD {

  private $view;
  private static $singleton;

  public static function getInstance() {

    if (is_null(self::$singleton)) {
      self::$singleton = new Views_MD();
    }

    return self::$singleton;
  }

  public function getView()
  {
    return $this->view;
  }

  public function setView($view)
  {
    $this->view = $view;
  }
}