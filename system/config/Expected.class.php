<?php

/**
 * Class Expected
 *
 * @author   Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
 */
class Expected
{
	//Set system variables expected keys
	const Properties = 'properties';
	const SetProperties = 'set properties';
	const SetPropertiesIp = 'ip';
	const ExpectedProperties = 'Expected properties';
	const ExpSetPropertiesDomain = 'client';
	const SetPropertiesDevice = 'device';
	const ExpSetPropertiesHeaders = 'headers';

	//Set expected header name
	const ExpHeaderFrom = 'From';
	const ExpHeaderAuth = 'Authorization';

	const ExpSetVariableRoute = 'route';
	const ExpSetVarRouteName = 'routeName';

	//Set Auth route expected names
	const ExpRouteAuth = 'auth';
	const ExpAuthId = 'id';
	const ExpAuthName = 'name';
	const ExpAuthEmail = 'email';
	const ExpAuthBirthday = 'birthday';
	//Set trigger route name
	const ExpAuthTrigger = 'AUTH';

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

	//Set Error routes expected names
	const ExpRouteViews = 'views';
	const ExpViews = 'vw';
	const ExpViewsTrigger = 'VIEWS';

	//Set Keys name to expected routes params
	const ExpRouteNeedTK = 'needTK';
	const ExpRouteKeyParams = 'params';
	const ExpRouteKeyTrigger = 'trigger';
	const ExpErrorKeyException = 'exception';
	const ExpRoutesWithParams = 'routesWithParams';

	//Set format options keys
	const ExpFormat = 'format';
	const ExpFormatIp = 'ip';
	const ExpFormatInt = 'int';
	const ExpFormatUrl = 'url';
	const ExpFormatChar = 'char';
	const ExpFormatDate = 'date';
	const ExpFormatBool = 'bool';
	const ExpFormatEmail = 'email';
	const ExpFormatFloat = 'float';
	const ExpFormatDomain = 'domain';
	const ExpFormatRoutes = 'routes';
	const ExpFormatVarchar = 'varchar';
	const ExpFormatRequest = 'request';
	const ExpFormatNumeric = 'numeric';
	const ExpFormatMethods = 'methods';
	const ExpFormatHeaders = 'headers';
	const ExpFormatTriggers = 'triggers';
	const ExpFormatVariable = 'variable';
}