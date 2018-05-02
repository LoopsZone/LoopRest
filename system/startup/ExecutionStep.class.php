<?php

class ExecutionStep
{
	public function __get($name)
	{
		return $this->$name();
	}
	
	
}