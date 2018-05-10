<?php

class ExecutionStepsErrors
{
	static $errorCodesSteps = [
		GlobalSystem::StepCheckSecretKey => [
			GlobalSystem::ExpErrorCode => 101,
			GlobalSystem::ExpViews => 'Test'
		],

		GlobalSystem::StepCheckAccessSystemDB => [
			GlobalSystem::ExpErrorCode => 102,
			GlobalSystem::ExpViews => 'Test'
		]
	];

	public $stepErrorCodeView = [
		GlobalSystem::StepCheckAccessSystemDB => [
			1049 => 'Test'
		]
	];
}