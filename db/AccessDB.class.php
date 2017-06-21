<?php

//require_once DIR . '/db/db.class.php';

class AccessDB extends db
{
    protected $host;
    protected $user;
    protected $password;
    protected $db;
    protected $auth;

    public function db($host, $user, $password, $db)
    {
        $this->host = 'localhost';
        $this->user = 'root';
        $this->password = '';
        $this->db = 'loop';

        $this->auth = new db($host, $user, $password, $db);
    }
}