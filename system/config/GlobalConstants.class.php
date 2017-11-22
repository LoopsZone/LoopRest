<?php

require_once 'Expected.class.php';

/**
 * Class globalConstants
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class GlobalConstants extends Expected
{
	const ExpMethodGet = 'GET';
	const ExpMethodPut = 'PUT';
	const ExpMethodPost = 'POST';
	const ExpMethodDelete = 'DELETE';
	
	const ExpAvailableMethods = [
		self::ExpMethodGet,
		self::ExpMethodPut,
		self::ExpMethodPost,
		self::ExpMethodDelete
	];
	
	const PRINCIPAL_VIEW = 'Home';
	
	//Header Allow
	public static $allowHeaders = [
		Expected::ExpHeaderFrom,
		Expected::ExpHeaderAuth
	];
	protected static $directoriesToIgnore = [
		'vendor',
		'staticFiles'
	];
}