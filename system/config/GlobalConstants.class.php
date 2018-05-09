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

	const CacheSecretKey = 'SECRET_KEY';

	const ExpAvailableMethods = [
		self::ExpMethodGet,
		self::ExpMethodPut,
		self::ExpMethodPost,
		self::ExpMethodDelete
	];

	//Header Allow
	const AllowHeaders = [
		self::ExpHeaderFrom,
		self::ExpHeaderAuth
	];

	const DirectoriesToIgnore = [
		'vendor',
		'staticFiles'
	];

	const UrlRouteNotAllow = [
		self::ExpRouteError,
		self::ExpRouteRequest
	];

	const DB_ENGINE_MYSQL = 'mysql';
}