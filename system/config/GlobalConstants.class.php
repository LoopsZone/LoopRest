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

	const CallbackKey = 'callback';

	const ExpAvailableMethods = [
		self::ExpMethodGet,
		self::ExpMethodPut,
		self::ExpMethodPost,
		self::ExpMethodDelete
	];

	const PublicRoutes = [
	  'test',
	  self::ExpTranslatedRequestStartupRoute
  ];

	const ContentTypesAllows = [
	  self::ExpContentTypeAll,
	  self::ExpContentTypeTextHTML,
    self::ExpContentTypeApplicationJSON
  ];

  const TranslatedRequestRoutes = [
    'test' => self::ExpRouteRequest,
    self::ExpTranslatedLoopViewRoute => self::ExpRouteView,
    self::ExpTranslatedRequestStartupRoute => self::ExpRouteRequest
  ];

	const CacheSecretKey = 'SECRET_KEY';
  const CacheConfigDB = 'CONFIG_DB';
	const StepCheckSecretKey = 'checkSecretKey';
  const StepCheckAccessSystemDB = 'checkAccessSystemDB';
  const StepCheckConnexionHostDB = 'checkConnexionHostDB';

	const AllowHeaders = [
		self::ExpHeaderFrom,
		self::ExpHeaderAuth,
    self::ExpHeaderAccept
	];

	const DirectoriesToIgnore = [
		'vendor',
		'staticFiles'
	];

	const UrlRouteNotAllow = [
		self::ExpRouteError,
		self::ExpRouteRequest
	];

	const DBEngineMysql = 'mysql';
}