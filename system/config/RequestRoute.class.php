<?php

/**
 * Class RequestRoute
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class RequestRoute extends Expected
{
	/**
	 * Set in expected the constant to name to params
	 *
	 * @var array
	 */
	public static $routes = [
		//VIEWS Action
		self::ExpRouteViews => [
			self::ExpRouteKeyParams => [
				self::ExpViews => self::ExpFormatVarchar
			],
			self::ExpRouteKeyTrigger => self::ExpViewsTrigger
		],
		//Request Action
		self::ExpRouteRequest => [
			self::ExpRouteKeyParams => [
				self::ExpRequestToken => self::ExpFormatVarchar,
				self::ExpRequestRequest => self::ExpFormatVarchar
			],
			self::ExpRouteKeyTrigger => self::ExpRequestTrigger,
		],
		//AUTH action
		self::ExpRouteAuth => [
			self::ExpRouteKeyParams => [
				self::ExpAuthId => self::ExpFormatNumeric,
				self::ExpAuthEmail => self::ExpFormatEmail,
				self::ExpAuthName => self::ExpFormatChar,
				self::ExpAuthBirthday => self::ExpFormatDate
			],
			self::ExpRouteKeyTrigger => self::ExpAuthTrigger,
		],
		//Error Action
		self::ExpRouteError => [
			self::ExpRouteKeyParams => [
				self::ExpErrorCode => self::ExpFormatNumeric,
				self::ExpErrorDesc => self::ExpFormatVarchar
			],
			self::ExpErrorKeyException => [
				self::ExpErrorLine => self::ExpFormatDate,
				self::ExpErrorDoc => self::ExpFormatChar
			],
			self::ExpRouteKeyTrigger => self::ExpErrorTrigger,
		]
	];
}