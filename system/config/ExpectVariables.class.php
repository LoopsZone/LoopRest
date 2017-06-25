<?php

class ExpectVariables extends Expected
{
    public static $variables = [
        self::ExpSetVariableIp => self::ExpFormatIp,
        self::ExpSetVariableDevice => self::ExpFormatDevices,
        self::ExpSetVariableClient => self::ExpFormatClients,
        self::ExpSetVariableMethod => self::ExpFormatMethods,
        self::ExpSetVariableHeaders => self::ExpFormatHeaders
    ];
}