<?php

require_once DIRECTORY . 'Expected.class.php';

/**
 * Class globalConstants
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class globalConstants extends Expected
{
    protected static $directoriesToIgnore = [
        'vendor',
        'sql'
    ];
}