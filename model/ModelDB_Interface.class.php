<?php

interface ModelDB_Interface
{
  function __construct();

  public static function getInstance();

  function __set($name, $value);

  function __get($name);
}