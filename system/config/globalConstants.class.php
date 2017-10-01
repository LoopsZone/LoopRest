<?php

require_once DIRECTORY . 'system/config/Expected.class.php';

/**
 * Class globalConstants
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class GlobalConstants extends Expected
{
    protected static $directoriesToIgnore = [
        'vendor'
    ];

    const ExpMethodGet = 'GET';
    const ExpMethodPut = 'PUT';
    const ExpMethodPost = 'POST';
    const ExpMethodDelete = 'DELETE';

    //Header Allow
    public static $allowHeaders = [
        Expected::ExpHeaderFrom,
        Expected::ExpHeaderAuth
    ];
}