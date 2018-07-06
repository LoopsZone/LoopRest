<?php

class ProjectsModel_DB
{
  private static $instance;
  public static function getInstance()
  {
    if(is_null(self::$instance)){
      self::$instance = ModelDB::created(self::class, function($table){
        $table->int('id')->notNull();
        $table->int('id')->autoIncrement();
        $table->int('id', 55)->primaryKey();

        $table->varchar('name', 55)->notNull();
      });
    }

    return self::$instance;
  }
}