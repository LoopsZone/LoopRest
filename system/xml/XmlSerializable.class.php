<?php

class XmlSerializable
{
	
	/**
	 * serialize by instances'
	 *
	 * @param string $name
	 * @param bool $toString
	 *
	 * @return string | XmlElement
	 */
	public function serialize ($name = null, $toString = true)
	{
		$xml = new XmlElement($name ? $name : get_class($this));
		$attributes = get_object_vars($this);
		
		foreach($attributes as $key => $value) {
			if(is_object($value)) {
				$xml->addElement($value->serialize($key, $toString));
			} else {
				$xml->addElementValue($key, $value);
			}
		}
		if($toString) {
			return $xml->__tostring();
		} else {
			return $xml;
		}
	}
	
	/**
	 * serialize by class name
	 *
	 * @return string
	 */
	public function serializeClass ()
	{
		$xml = new XmlElement(get_class($this));
		$attributes = get_object_vars($this);
		
		foreach($attributes as $key => $value) {
			if(is_object($value)) {
				$xml->addElement($value->serializeClass());
			} else {
				$xml->addElementValue($key, $value);
			}
		}
		
		return $xml->__tostring();
	}
	
}

?>