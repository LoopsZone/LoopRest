<?php

class ExpectVariables extends Expected
{
    public static $properties = [
        self::ExpSetPropertiesIp => self::ExpFormatIp,
        self::ExpSetPropertiesDevice => self::ExpFormatDevices,
        self::ExpSetPropertiesClient => self::ExpFormatClients,
        self::ExpSetPropertiesMethod => self::ExpFormatMethods,
        self::ExpSetPropertiesHeaders => self::ExpFormatHeaders
    ];
}