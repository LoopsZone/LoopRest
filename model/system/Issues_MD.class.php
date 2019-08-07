<?php

class Issues_MD
{
    const ID = 'id';
    const NAME = 'name';
    const OWNER = 'owner';

    private static $instance;

    public static function getInstance ()
    {
        if(is_null(self::$instance)) {
            self::$instance = ModelDB::created(self::class, function($table) {
                $table->int(self::ID)->notNull();
                $table->int(self::ID)->autoIncrement();
                $table->int(self::ID, 55)->primaryKey();

                $table->varchar(self::NAME, 55);
                $table->int(self::OWNER)->foreignKey(Projects_MD::class);
            });
        }

        return self::$instance;
    }
}