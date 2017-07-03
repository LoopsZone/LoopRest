<?php

/**
 * Class Expected
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Expected
{
    //Set system variables expected keys
    const ExpVariables = 'variables';
    const ExpSetVariables = 'set variables';
    const ExpSetVariableIp = 'ip';
    const ExpectedVariables = 'Expected variables';
    const ExpSetVariableClient = 'client';
    const ExpSetVariableDevice = 'device';
    const ExpSetVariableHeaders = 'headers';
    //Set expected header name
    const ExpHeaderFrom = 'From';

    const ExpSetVariableRoute = 'route';
    //Set routes expected names
    const ExpSetVarRouteName = 'routeName';

    //Set Update route expected names
    const ExpRoutePut = 'update';

    //Set Post route expected names
    const ExpRoutePost = 'insert';

    //Set View route expected names
    const ExpRouteView = 'views';

    //Set Auth route expected names
    const ExpRouteAuth = 'auth';
    const ExpAuthId = 'id';
    const ExpAuthName = 'name';
    const ExpAuthEmail = 'email';
    const ExpAuthBirthday = 'birthday';
    //Set trigger route name
    const ExpAuthTrigger = 'AUTH';

    //Set Delete route expected names
    const ExpRouteDelete = 'delete';

    //Set Request route expected names
    const ExpRouteRequest = 'request';
    const ExpRequestToken = 'tk';
    const ExpRequestRequest = 'request';
    //Set trigger route name
    const ExpRequestTrigger = 'REQUEST';

    //Set Error routes expected names
    const ExpRouteError = 'error';
    const ExpErrorLine = 'line';
    const ExpErrorCode = 'code';
    const ExpErrorDoc = 'document';
    const ExpErrorDesc = 'description';
    //Set trigger route name
    const ExpErrorTrigger = 'ERROR';

    //Set Keys name to expected routes params
    const ExpRouteKeyParams = 'params';
    const ExpRouteKeyTrigger = 'trigger';
    const ExpErrorKeyException = 'exception';

    //Set expected method implemented
    const ExpSetVariableMethod = 'method';
    const ExpMethodGet = 'GET';
    const ExpMethodPut = 'PUT';
    const ExpMethodPost = 'POST';
    const ExpMethodDelete = 'DELETE';

    //Set format options keys
    const ExpFormatIp = 'ip';
    const ExpFormatInt = 'int';
    const ExpFormatUrl = 'url';
    const ExpFormatChar = 'char';
    const ExpFormatDate = 'date';
    const ExpFormatBool = 'bool';
    const ExpFormatEmail = 'email';
    const ExpFormatFloat = 'float';
    const ExpFormatRoutes = 'routes';
    const ExpFormatVarchar = 'varchar';
    const ExpFormatRequest = 'request';
    const ExpFormatNumeric = 'numeric';
    const ExpFormatClients = 'clients';
    const ExpFormatDevices = 'devices';
    const ExpFormatMethods = 'methods';
    const ExpFormatHeaders = 'headers';
    const ExpFormatTriggers = 'triggers';
    const ExpFormatVariable = 'variable';
}