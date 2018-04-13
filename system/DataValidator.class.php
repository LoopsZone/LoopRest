<?php

class DataValidator
{
	const REGEX_USERNAME = '/^[a-z0-9_-]{3,9}$/';
	const REGEX_EMAIL = '/^([a-zA-Z0-9_\.-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-]{2,}+)+/';
	const REGEX_ONLY_TEXT = '/^[a-zA-Z\ \']+$/';
	const REGEX_ALPHA_NUMERIC = '/^[a-zA-Z0-9]+$/';
	const REGEX_NUMERIC = '/^[0-9]+$/';
	const REGEX_FLOAT = '/^[0-9]+\d*((\.|\,)\d+)?$/';
	const REGEX_ALPHA_NUMERIC_WITH_SPACES = '/^[\t a-zA-Z0-9]+$/';

	const REGEX_MAJOR_CC = '/^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6011[0-9]{12}|3(?:0[0-5]|[68][0-9])[0-9]{11}|3[47][0-9]{13})$/';
	const REGEX_CREDIT_CARD_VI = '/^4[0-9]{12}(?:[0-9]{3})?$/';
	const REGEX_CREDIT_CARD_MC = '/^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$/';
	const REGEX_CREDIT_CARD_VBV = '/^4[0-9]{12}(?:[0-9]{3})?$/';
	const REGEX_CREDIT_CARD_AMEX = '/^3[47]\d{13}$/';

	const REGEX_CONTROL_NUMBER_WU = '/^[0-9]{10}$/';
	const REGEX_CONTROL_NUMBER_MG = '/^[0-9]{8}$/';
	const REGEX_CONTROL_NUMBER_BP = '/^[0-9]{8}$/';
	const REGEX_CONTROL_NUMBER_RIA = '/^[0-9]{11}$/';
	const REGEX_CVV = '/^[0-9]{3}$/i';
	const REGEX_CVVAMEX = '/^[0-9]{4}$/i';
	const REGEX_DATE = '/^\d{4}[\/-]\d{1,2}[\/-]\d{1,2}$/';
	const REGEX_CUSTOM = '/.+/';

	/**
	 * Checks if the value matches with a valid email address
	 *
	 * @param $email string
	 * @param $allowEmpty bool
	 * @return bool
	 */
	public static function isValidEmail($email, $allowEmpty = false)
	{
		$email = trim($email);
		if(empty($email) && $allowEmpty){
			return true;
		}

		return preg_match(self::REGEX_EMAIL, (string)$email);
	}

	/**
	 * Checks if the value matches with a valid date
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidDate($value)
	{
		return preg_match(self::REGEX_DATE, (string)$value);
	}
	
	/**
	 * check if the value is null or empty;
	 *
	 * @param string $key
	 *
	 * @return bool
	 */
	public static function isNotEmpty($value)
	{
		return preg_match(self::REGEX_CUSTOM, $value);
	}

	/**
	 * check if the value is numeric;
	 *
	 * @param string $key
	 * @param int $isFloat
	 *
	 * @return bool
	 */
	public static function isNumeric($value, $isFloat = false)
	{
		if($isFloat){
			$matched = is_numeric($value);
		}else{
			$matched = preg_match(self::REGEX_NUMERIC, $value);
		}

		return $matched;
	}

	/**
	 * Check if the value is numeric;
	 *
	 * @param string $key
	 *
	 * @return bool
	 */
	public static function isFloat($value)
	{
		$matched = preg_match(self::REGEX_FLOAT, $value);

		return $matched;
	}
	
	/**
	 * Checks if the value is a valid IPv4 Address
	 *
	 * @param string $value
	 * @param bool $allowLocalhost
	 *
	 * @return boolean
	 */
	public static function isValidIP($value, $allowLocalhost = true)
	{
		if(preg_match('/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\z/', $value)){
			return ($value == "127.0.0.1" && !$allowLocalhost);
		}

		return false;
	}
}