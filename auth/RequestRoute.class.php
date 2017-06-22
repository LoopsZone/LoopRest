<?php

class RequestRoute extends Expected
{
    public static $routes = [
        //AUTH action
        'auth' => [
            'id' => 'numeric',
            'email' => 'email',
            'name' => 'char',
            'birthday' => 'date'
        ],
        //Get Action
        'request' => [
            'tk' => 'varchar',
            'request' => 'request'
        ],
    ];
    //
    public static $trigger = [
        'request' => 'GET',
        'auth' => 'AUTH',
        'error' => 'ERROR',
        'views' => 'VIEWS',
        'post' => 'INSERT',
        'delete' => 'DELETE',
        'put' => 'UPDATE'
    ];
    public $user = [
        'db' => 'loopUser',
        'errorFormat' => 'The request not found',
    ];
}