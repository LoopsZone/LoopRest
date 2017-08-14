<?php

class ExpectVariables extends Expected
{
    public static $properties = [
        self::ExpSetPropertiesIp => self::ExpFormatIp,
        self::ExpSetPropertiesDevice => self::ExpFormatVarchar,
        self::ExpSetPropertiesDomain => self::ExpFormatDomain,
        self::ExpSetPropertiesMethod => self::ExpFormatMethods,
        self::ExpSetPropertiesHeaders => self::ExpFormatHeaders
    ];
}