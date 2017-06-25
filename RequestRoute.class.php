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
        //Request Action
        self::ExpRouteRequest => [
            self::ExpRouteKeyParams => [
                self::ExpRequestToken => self::ExpFormatVarchar,
                self::ExpRequestRequest => self::ExpFormatVarchar
            ],
            self::ExpRouteKeyTrigger => self::ExpRequestTrigger,
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
            self::ExpRouteKeyTrigger => self::ExpErrorTrigger, //Method to execute see auth\Manager::action
        ]
    ];


    public static $variables = [
        self::ExpSetVariableIp => self::ExpFormatIp,
        self::ExpSetVariableDevice => self::ExpFormatDevices,
        self::ExpSetVariableClient => self::ExpFormatClients,
        self::ExpSetVariableMethod => self::ExpFormatMethods,
        self::ExpSetVariableHeaders => self::ExpFormatHeaders
    ];
}