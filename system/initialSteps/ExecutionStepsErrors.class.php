<?php

class ExecutionStepsErrors
{
	public static $errorCodesSteps = [
		GlobalSystem::StepCheckSecretKey => [
			GlobalSystem::ExpErrorCode => 101,
			GlobalSystem::ExpView => 'Startup'
		],

		GlobalSystem::StepCheckConnexionHostDB => [
			GlobalSystem::ExpErrorCode => 102,
			GlobalSystem::ExpView => 'Startup:ConnexionHost'
		]
	];

	public static $sqlErrorCodes = [
		GlobalSystem::StepCheckAccessSystemDB => 1049
	];
}