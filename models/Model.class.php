<?php
class Model {
  private static $singleton;

  public static function getInstance() {

    if (is_null(self::$singleton)) {
      self::$singleton = new Model();
    }

    return self::$singleton;
  }

  /**
   * Model
   * get a singleton instance of ClientServer_MD
   *
   * @return ClientServer_MD
   */
  public function getClientServerInstance()
  {
    return ClientServer_MD::getInstance();
  }

  /**
   * Model
   * get a singleton instance of Route_MD
   *
   * @return Route_MD
   */
  public function getRouteInstance()
  {
    return Route_MD::getInstance();
  }

  /**
   * Model
   * get a singleton instance of Views_MD
   *
   * @return Route_MD
   */
  public function getViewsInstance()
  {
    return Views_MD::getInstance();
  }
}