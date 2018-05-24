<?php

/**
 * Class ErrorCodes
 */
class ErrorCodes
{
	const SystemError = [
		GlobalSystem::ExpErrorCode => 0,
		GlobalSystem::ExpErrorDesc => false
	];

	const HttpMetHodExc = [
		GlobalSystem::ExpErrorCode => 1,
		GlobalSystem::ExpErrorDesc => 'Http method no implemented'
	];

	const ActionExc = [
		GlobalSystem::ExpErrorCode => 2,
		GlobalSystem::ExpErrorDesc => 'Action selected no valid'
	];

	const MetHodExc = [
		GlobalSystem::ExpErrorCode => 3,
		GlobalSystem::ExpErrorDesc => 'Method selected no valid or implemented'
	];

	const HttpParamsExc = [
		GlobalSystem::ExpErrorCode => 4,
		GlobalSystem::ExpErrorDesc => 'Invalid input params'
	];

	const AccessExc = [
		GlobalSystem::ExpErrorCode => 5,
		GlobalSystem::ExpErrorDesc => 'Invalid access attempt'
	];
}