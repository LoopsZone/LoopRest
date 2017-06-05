<?php

class Request_Route extends Expected
{
    public static $setVariables = [
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
        ]
    ];
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