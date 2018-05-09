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

	const MetHodExc = [
		GlobalSystem::ExpErrorCode => 1,
		GlobalSystem::ExpErrorDesc => 'Method selected no valid or implemented'
	];

	const HttpParamsExc = [
		GlobalSystem::ExpErrorCode => 2,
		GlobalSystem::ExpErrorDesc => 'Invalid input params'
	];

	const ActionExc = [
		GlobalSystem::ExpErrorCode => 3,
		GlobalSystem::ExpErrorDesc => 'Action selected no valid'
	];

	const AccessExc = [
		GlobalSystem::ExpErrorCode => 4,
		GlobalSystem::ExpErrorDesc => 'Invalid access attempt'
	];
}