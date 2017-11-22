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
	 * Checks if the value matches with a valid username
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidUserName ($value)
	{
		$matched = preg_match(self::REGEX_USERNAME, (string)$value);
		return $matched;
	}
	
	
	/**
	 * Checks if the value matches with a valid first name
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidFirstName ($value)
	{
		// @todo Modify self::REGEX_ONLY_TEXT to support Unicode Strings
		$value = trim($value);
		return (!empty($value));
	}
	
	/**
	 * Checks if the value matches with a valid last name
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidLastName ($value)
	{
		// @todo Modify self::REGEX_ONLY_TEXT to support Unicode Strings
		$value = trim($value);
		return (!empty($value));
	}
	
	/**
	 * validates the small code (Country)
	 *
	 * @param $smallCode string
	 *
	 * @return bool
	 */
	public static function isValidCountrySmallCode ($smallCode)
	{
		$tblDataValidator = TblDataValidator::getInstance();
		$countryData = $tblDataValidator->getCountryBySmall($smallCode);
		if(!$countryData) {
			//country code not found
			return false;
		}
		$isActive = $countryData['IsActive'];
		if(!$isActive) {
			return false;
		}
		return true;
	}
	
	/**
	 * Checks if the value matches with a valid State
	 *
	 * @param $ccState string
	 * @param $ccCountry string
	 * @return bool
	 */
	public static function isValidState ($ccState, $ccCountry = null)
	{
		// @todo Pending DB Validation
		return (!empty($ccState));
	}
	
	/**
	 * Checks if the value matches with a valid city
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidCity ($value, $allowEmpty = false)
	{
		$value = trim($value);
		return (!empty($value) || $allowEmpty);
	}
	
	/**
	 * Checks if the value matches with a valid address
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidAddress ($addressOne, $addressTwo = '')
	{
		$addr = empty($addressTwo) ? $addressOne : $addressOne . ' ' . $addressTwo;
		return (!empty($addr));
	}
	
	/**
	 * Checks if the value matches with a valid Postal Code
	 *
	 * @param string $postalCode
	 * @return bool
	 */
	public static function isValidPostalCode ($postalCode, $country)
	{
		$postalCode = trim($postalCode);
		
		$tblDataValidator = TblDataValidator::getInstance();
		$countryData = $tblDataValidator->getCountryBySmall($country);
		
		if(!$countryData) {
			return false;
		}
		
		$zipCodeRegex = $countryData['ZipCodeRegex'];
		
		if(!$zipCodeRegex) {
			return true;
		}
		
		$matched = preg_match($zipCodeRegex, $postalCode);
		
		return $matched;
	}
	
	/**
	 * Checks if the value matches with a valid email address
	 *
	 * @param $email string
	 * @param $allowEmpty bool
	 * @return bool
	 */
	public static function isValidEmail ($email, $allowEmpty = false)
	{
		$email = trim($email);
		if(empty($email) && $allowEmpty) {
			return true;
		}
		
		$matched = preg_match(self::REGEX_EMAIL, (string)$email);
		return $matched;
	}
	
	/**
	 * Checks if the value matches with a valid Phone
	 *
	 * @param phone string
	 * @param $allowEmpty bool
	 * @param $country string
	 * @return bool
	 */
	public static function isValidPhone ($phone, $allowEmpty = false, $country = null)
	{
		$phone = preg_replace('/[^0-9]+/', '', $phone);                    // ##### Strip all Non-Numeric Characters
		
		if(empty($phone) && $allowEmpty) {
			return true;
		}
		
		if($country) {
			// Check the possible lengths of the phone number
			$tblDataValidator = TblDataValidator::getInstance();
			$countryData = $tblDataValidator->getCountryBySmall($country);
			if(!$countryData) {
				return false;
			}
			$phoneLengthOptions = $countryData['PhoneLength'];
			if(!empty($phoneLengthOptions)) {
				$phoneLengthOptions = explode(',', $phoneLengthOptions);
				$phoneLength = strlen($phone);
				
				if(!in_array($phoneLength, $phoneLengthOptions)) {
					return false;
				}
			}
			
			// @todo Pending US CA Valid Area Code Validation
			
			return (!empty($phone) || $allowEmpty);
		} else {
			return (!empty($phone) || $allowEmpty);
		}
	}
	
	
	/**
	 * Checks if the value matches with a valid Card Holder Name
	 *
	 * @param $ccName string
	 * @param $ccFirstName string
	 * @param $ccLastName string
	 * @return bool
	 */
	public static function isValidCardHolderName ($ccName, $ccFirstName, $ccLastName)
	{
		// @todo Pending Real Validation
		// @todo Modify self::REGEX_ONLY_TEXT to support Unicode Strings
		$value = trim($ccName);
		return (!empty($value));
	}
	
	/**
	 * Checks if the value matches with a Credit Card
	 *
	 * @param $value string
	 * @param $cardType string [VI | MC | VBV | AMEX]
	 *
	 * @return bool
	 */
	public static function isValidCreditCard ($value, $cardType = '')
	{
		if(!self::verifyCCMod10($value)) {
			return false;
		}
		
		$cardType = strtoupper($cardType);
		if(!empty($cardType) && defined("self::REGEX_CREDIT_CARD_$cardType")) {
			$matched = preg_match(constant("self::REGEX_CREDIT_CARD_$cardType"), (string)$value);
		} else {
			$matchedVI = preg_match(self::REGEX_CREDIT_CARD_VI, (string)$value);
			$matchedMC = preg_match(self::REGEX_CREDIT_CARD_MC, (string)$value);
			$matchedVV = preg_match(self::REGEX_CREDIT_CARD_VBV, (string)$value);
			$matchedAE = preg_match(self::REGEX_CREDIT_CARD_AMEX, (string)$value);
			$matched = $matchedVI || $matchedMC || $matchedVV || $matchedAE;
		}
		return $matched;
	}
	
	/**
	 * verifies if the credit card is valid through Mod10 Algorithm
	 *
	 * @param string $card
	 *
	 * @return boolean
	 */
	private static function verifyCCMod10 ($card)
	{
		$values = str_split($card);
		$length = strlen($card);
		$sum = 0;
		
		for($i = $length - 1; $i >= 0; $i--) {
			$sum += $values[$i];
			$i--;
			if($i >= 0) {
				$tempSum = $values[$i] * 2;
				
				if($tempSum >= 10) {
					$digits = str_split($tempSum);
					$sum += $digits[0] + $digits[1];
				} else {
					$sum += $tempSum;
				}
			}
		}
		
		if($sum % 10 == 0) {
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * Checks if the value matches with a valid Expiration Date
	 *
	 * @param $ccExpMonth string
	 * @param $ccExpYear string
	 * @return bool
	 */
	public static function isValidExpirationDate ($ccExpMonth, $ccExpYear)
	{
		// Last day of the month
		$lastDayValid = date('Y-m-d', mktime(0, 0, 0, $ccExpMonth + 1, 0, $ccExpYear));
		$today = date("Y-m-d");
		return ($lastDayValid > $today);
	}
	
	/**
	 * Checks if the value matches with a valid CVV number
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidCVV ($value, $CVVcardType = '')
	{
		if(!empty($CVVcardType) && defined("self::REGEX_CVV$CVVcardType")) {
			$matched = preg_match(constant("self::REGEX_CVV$CVVcardType"), (string)$value);
		} else {
			if(empty($CVVcardType) || $CVVcardType == Visa::CARD_TYPE || $CVVcardType == Mastercard::CARD_TYPE || $CVVcardType == VbVisa::CARD_TYPE) {
				$matched = preg_match(self::REGEX_CVV, (string)$value);
			} else {
				$matched = preg_match(self::REGEX_CVVAMEX, (string)$value);
			}
		}
		return $matched;
	}
	
	/**
	 * Checks if the value matches with a valid date of birth
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidDateOfBirth ($date)
	{
		$isDate = self::isValidDate($date);
		
		//temporal log
		try {
			$trace = debug_backtrace();
			if($date == '1970-01-01') {
				$message = Util::arrayAssocToString($trace);
				Log::custom('DOB', $message);
			}
		} catch(Exception $e) {
			//nothing
		}
		
		return $isDate;
		
		//@TODO temporary removed, complete JIRA MID-5289
		/*
		if($isDate){
				$dob = strtotime(trim($date));
				if ($dob){
						$birthDate = date("Y-m-d", $dob);
						if ($birthDate <= date("Y-m-d", strtotime("-18 years"))){
								return true;
						}
				}
		}
		return false;
		*/
	}
	
	/**
	 * Checks if the value matches with a valid date
	 *
	 * @param $value string
	 * @return bool
	 */
	public static function isValidDate ($value)
	{
		$matched = preg_match(self::REGEX_DATE, (string)$value);
		return $matched;
	}
	
	/**
	 * check if the value is null or empty;
	 *
	 * @param string $key
	 *
	 * @return bool
	 */
	public static function isNotEmpty ($value)
	{
		$matched = preg_match(self::REGEX_CUSTOM, $value);
		return $matched;
	}
	
	/**
	 * check if the value is numeric;
	 *
	 * @param string $key
	 * @param int $isFloat
	 *
	 * @return bool
	 */
	public static function isNumeric ($value, $isFloat = false)
	{
		if($isFloat) {
			$matched = is_numeric($value);
		} else {
			$matched = preg_match(self::REGEX_NUMERIC, $value);
		}
		return $matched;
	}
	
	/**
	 * check if the value is numeric;
	 *
	 * @param string $key
	 *
	 * @return bool
	 */
	public static function isFloat ($value)
	{
		$matched = preg_match(self::REGEX_FLOAT, $value);
		return $matched;
	}
	
	/**
	 * Checks if the value matches with a valid Control Number
	 *
	 * @param $value string
	 * @param $P2PType string [ MG | WU ]
	 *
	 * @return bool
	 */
	public static function isValidControlNumber ($value, $P2PType = '')
	{
		if(!empty($P2PType) && defined("self::REGEX_CONTROL_NUMBER_$P2PType")) {
			$matched = preg_match(constant("self::REGEX_CONTROL_NUMBER_$P2PType"), (string)$value);
		} else {
			$matchedWU = preg_match(self::REGEX_CONTROL_NUMBER_WU, (string)$value);
			$matchedMG = preg_match(self::REGEX_CONTROL_NUMBER_MG, (string)$value);
			$matchedBP = preg_match(self::REGEX_CONTROL_NUMBER_BP, (string)$value);
			$matchedRIA = preg_match(self::REGEX_CONTROL_NUMBER_RIA, (string)$value);
			$matched = $matchedWU || $matchedMG || $matchedRIA || $matchedBP;
		}
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
	public static function isValidIP ($value, $allowLocalhost = true)
	{
		if(preg_match('/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\z/', $value)) {
			if($value == "127.0.0.1" && !$allowLocalhost) {
				return false;
			} else {
				return true;
			}
		}
		
		return false;
	}
}

?>