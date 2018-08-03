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
	const ExpHeaderAccept = 'Accept';
	const ExpHeaderAuth = 'Authorization';
	const ExpHeaderContentType = 'Content-type';

	const ExpContentTypeAll = '*/*';
  const ExpContentTypeTextHTML = 'text/html';
	const ExpContentTypeApplicationJSON = 'application/json';

	const ExpTranslateBodyRequest = 'body';
	const ExpTranslateRouteType = 'routeType';
  const ExpTranslateMethodsRoute = 'methods';
  const ExpTranslateMethodName = 'methodName';
	const ExpTranslatePublicRoute = 'publicRoute';
	const ExpTranslateParamsMethodWithRoutes = 'paramsWithRoutes';

	const ExpTranslatedLoopViewRoute = 'loop';
	const ExpTranslatedRequestStartupRoute = 'startup';
	const ExpTranslateRequestRoutesRoute = 'routes';

	//Token payload key
	const ExpAudTK = 'aud';
	const ExpExpTK = 'exp';
	const ExpDataTK = 'data';
	const ExpNameTK = 'name';
	const ExpEmailTK = 'email';
	const ExpAccessTK = 'access';
	const ExpSecretKeyTK = 'secretKey';

	//DB configs keys
	const ExpDB = 'database';
	const ExpHostDB = 'host';
	const ExpUserDB = 'user';
  const ExpEngineDB = 'engine';
	const ExpPasswordDB = 'password';

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
	const ExpErrorMessage = 'message';
	const ExpErrorDesc = 'description';
	const ExpErrorLast = 'lastError';
	//Set trigger route name
	const ExpErrorTrigger = 'ERROR';

	//Set Error routes expected names
	const ExpRouteView = 'view';
	const ExpView = 'vw';
	const ExpViewTrigger = 'VIEW';

	//Set Keys name to expected routes params
	const ExpRouteNeedTK = 'needTK';
	const ExpRouteMethod = 'method';
	const ExpRouteKeyParams = 'params';
	const ExpRouteKeyTrigger = 'trigger';
	const ExpErrorKeyException = 'exception';
	const ExpRoutesWithParams = 'routesWithParams';

	//Model keys name to expected modelDB
  const ExpType = 'type';
  const ExpJoin = 'join';
  const ExpNull = 'null';
  const ExpFrom = 'from';
  const ExpValue = 'value';
  const ExpModel = 'model';
  const ExpUnique = 'unique';
  const ExpLength = 'length';
  const ExpMatcher = 'matcher';
  const ExpDefault = 'default';
  const ExpProperty = 'property';
  const ExpMatchValue = 'matchValue';
  const ExpForeignKey = 'foreignKey';
  const ExpPrimaryKey = 'primaryKey';
  const ExpSensitiveInfo = 'sensitiveInfo';
  const ExpAutoIncrement = 'autoIncrement';

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
	const ExpFormatString = 'string';
	const ExpFormatVarchar = 'varchar';
	const ExpFormatRequest = 'request';
	const ExpFormatNumeric = 'numeric';
	const ExpFormatMethods = 'methods';
	const ExpFormatHeaders = 'headers';
	const ExpFormatTriggers = 'triggers';
	const ExpFormatVariable = 'variable';
  const ExpFormatRouteTypes = 'routeType';
}