<?php

class Login_MD
{
	private $id;
	private $name;
	private $email;
	private $birthday;
	private $externalId;

	private static $singleton;

	/**
	 * @return mixed
	 */
	public function getId ()
	{
		return $this->id;
	}
	
	/**
	 * @param mixed $id
	 */
	public function setId ($id)
	{
		$this->id = $id;
	}

	public static function getInstance()
	{
		if(is_null(self::$singleton)){
			self::$singleton = new Login_MD();
		}

		return self::$singleton;
	}

	/**
	 * @return mixed
	 */
	public function getName ()
	{
		return $this->name;
	}

	/**
	 * @param mixed $name
	 */
	public function setName ($name)
	{
		$this->name = $name;
	}

	/**
	 * @return mixed
	 */
	public function getEmail()
	{
		return $this->email;
	}

	/**
	 * @param mixed $email
	 */
	public function setEmail($email)
	{
		$this->email = $email;
	}

	/**
	 * @return mixed
	 */
	public function getBirthday()
	{
		return $this->birthday;
	}

	/**
	 * @param mixed $birthday
	 */
	public function setBirthday($birthday)
	{
		$this->birthday = $birthday;
	}

	/**
	 * @return mixed
	 */
	public function getExternalId()
	{
		return $this->externalId;
	}

	/**
	 * @param mixed $externalId
	 */
	public function setExternalId($externalId)
	{
		$this->externalId = $externalId;
	}
}