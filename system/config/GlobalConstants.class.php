<?php

require_once 'Expected.class.php';

/**
 * Class globalConstants
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class GlobalConstants extends Expected
{
    protected static $directoriesToIgnore = [
        'vendor',
        'staticFiles'
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

    const PRINCIPAL_VIEW = 'Home';
}