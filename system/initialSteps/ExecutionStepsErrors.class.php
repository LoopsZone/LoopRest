<?php

class ExecutionStepsErrors
{
	protected static $errorCodesSteps = [
		GlobalSystem::StepCheckSecretKey => [
			GlobalSystem::ExpErrorCode => 101,
			GlobalSystem::ExpView => 'Startup'
		],

		GlobalSystem::StepCheckConnexionHostDB => [
			GlobalSystem::ExpErrorCode => 102,
			GlobalSystem::ExpView => 'Startup:ConnexionHost'
		]
	];

	protected static $stepErrorCodeView = [
		GlobalSystem::StepCheckAccessSystemDB => [
			1049 => 'Test'
		]
	];
}