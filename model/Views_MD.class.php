<?php

class Views_MD
{
	private $view;
	private static $singleton;

	/**
	 * @return Views_MD
	 */
	public static function getInstance()
	{
		if(is_null(self::$singleton)){
			self::$singleton = new Views_MD();
		}

		return self::$singleton;
	}

	/**
	 * @return mixed
	 */
	public function getView()
	{
		return $this->view;
	}

	/**
	 * @param $view
	 */
	public function setView($view)
	{
		$this->view = $view;
	}
}