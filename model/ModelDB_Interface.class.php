<?php

interface ModelDB_Interface
{
  static function created($object, $closure);

  function __construct(ModelDataTypesDB $schema);

  function __call($name, $arguments);

  function __set($name, $value);

  function __get($name);
}