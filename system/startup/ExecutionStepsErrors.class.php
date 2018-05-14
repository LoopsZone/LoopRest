<?php

class ExecutionStepsErrors
{
	protected static $errorCodesSteps = [
		GlobalSystem::StepCheckSecretKey => [
			GlobalSystem::ExpErrorCode => 101,
			GlobalSystem::ExpView => 'Startup'
		],

		GlobalSystem::StepCheckAccessSystemDB => [
			GlobalSystem::ExpErrorCode => 102,
			GlobalSystem::ExpView => 'Test'
		]
	];

	protected static $stepErrorCodeView = [
		GlobalSystem::StepCheckAccessSystemDB => [
			1049 => 'Test'
		]
	];
}