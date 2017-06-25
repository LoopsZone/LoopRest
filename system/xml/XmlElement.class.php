<?php

class XmlElement
{

    public static $memory = 0;
    private $name;
    private $attributes;
    private $elements;
    /**
     * check if the value in the xml tag is CDATA wrapped
     *
     * @var bool
     */
    private $isCDATA = false;
    /**
     * value of the xml tag
     *
     * @var string
     */
    private $value = null;

    public function __construct($name)
    {
        $this->name = $name;
        $this->attributes = array();
        $this->elements = array();
        $this->value = '';
    }

    /**
     * Add a XmlElement to the beginning of the list
     *
     * @param XmlElement $element
     */
    public function addElementFirst($element)
    {
        array_unshift($this->elements, $element);
    }

    /**
     * Locates an element using the name. Should be used only when only one instance of name exists.
     * It will return the first ocurrence.
     *
     * @param string $name
     * @return XmlElement
     */
    public function locateElement($name)
    {
        $locatedElement = $this->getElement($name);
        if ($locatedElement) return $locatedElement;

        foreach ($this->elements as $element) {
            $locatedElement = $element->locateElement($name);
            if ($locatedElement) return $locatedElement;
        }
        return 0;
    }

    /**
     * Get an element using the name
     *
     * @param string $name
     * @return XmlElement
     */
    public function getElement($name)
    {
        foreach ($this->elements as $element) {
            $currName = $element->getName();
            if ($currName == $name) {
                return $element;
            }
        }
        return 0;
    }

    /**
     * get a XmlElement with a sub set of elements
     *
     * @param string $filterId
     * @param string $filterValue
     *
     * @return XmlElement
     */
    public function getFilteredXml($filterId, $filterValue)
    {
        $newXml = new XmlElement($this->name);
        foreach ($this->elements as $xmlElement) {
            $xmlElement instanceof XmlElement;
            $value = $xmlElement->getAttr($filterId);
            if ($value == $filterValue) {
                $newXml->addElement($xmlElement);
            }
        }
        return $newXml;
    }

    /**
     * Add a XmlElement
     *
     * @param XmlElement $element
     */
    public function addElement($element)
    {
        array_push($this->elements, $element);
    }

    /**
     * Get a attribute from a name
     *
     * @param string $name
     * @return string
     */
    public function getAttr($name)
    {
        $exists = array_key_exists($name, $this->attributes);
        if (!$exists) {
            return false;
        }

        $value = $this->attributes [$name];
        return $value;
    }

    /**
     * Add text to the value
     *
     * @param string $value
     */
    public function addValue($value)
    {
        $this->value .= trim($value);
    }

    /**
     * convert value to XmlElement
     *
     * @return XmlElement
     */
    public function getValueAsXml()
    {
        $value = $this->getValue();
        $parser = new XmlParser();
        $xml = $parser->loadXml($value);
        return $xml;
    }

    /**
     * Get the text element
     * @example
     * <xml>
     * <element>value</element>
     * </xml>
     *
     * @return string
     */
    public function getValue()
    {
        return $this->value;
    }

    /**
     * Set the text value of an element
     *
     * @param string $value
     * @parma bool $isCDATA
     */
    public function setValue($value, $isCDATA = false)
    {
        $this->value = trim($value);
        $this->isCDATA = $isCDATA;
    }

    /**
     * get element's value
     *
     * @param string $name
     * @param value $default
     * @return value
     */
    public function getElementValue($name, $default = '')
    {
        $element = $this->getElement($name);
        if (!$element) {
            return $default;
        }
        return $element->getValue();
    }

    /**
     * Clear elements and attributes
     *
     */
    public function clear()
    {
        $mem = memory_get_usage();
        XmlElement::$memory = ($mem > XmlElement::$memory) ? $mem : XmlElement::$memory;

        foreach ($this->elements as $element) {
            $element->clear();
        }

        array_splice($this->elements, 0);
        array_splice($this->attributes, 0);
    }

    /**
     * Get an array from a simple xml
     *
     * @example
     * <xml>
     * <element key='value1' />
     * <element key='value2' />
     * <element key='value3' />
     * </xml>
     *
     * @param string $key
     * @return array
     */
    public function simpleXmlToArray($key)
    {
        $resultArray = array();

        foreach ($this->elements as $element) {
            $name = $element->getName();
            $value = $element->getAttr($key);
            $resultArray [$name] = $value;
        }
        return $resultArray;
    }

    /**
     * Get an array from a xml list
     *
     * @example
     * <xml>
     * <key>
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * </key>
     * </xml>
     *
     * @param string $key
     * @return array
     */
    public function listXmlToArray($key = null)
    {
        if ($key) {
            $list = $this->getElement($key);
        } else {
            $list = $this;
        }

        $result = array();
        if (!$list) {
            return $result;
        }

        $elements = $list->getElements();
        foreach ($elements as $element) {
            array_push($result, $element->getAttrs());
        }

        return $result;
    }

    /**
     * Get the XmlElement list
     *
     * @return array
     */
    public function getElements()
    {
        return $this->elements;
    }

    /**
     * Get an array from a xml list
     *
     * @example
     * <xml>
     * <key>
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * </key>
     * </xml>
     *
     * @param string $key
     * @return array
     */
    public function xmlToArray2()
    {
        $result = array();
        $elements = $this->getElements();
        foreach ($elements as $element) {
            $row = array();
            $subElements = $element->getElements();
            foreach ($subElements as $subElement) {
                $key = $subElement->getName();
                $value = $subElement->getValue();
                $row [$key] = $value;
            }
            array_push($result, $row);
        }

        return $result;
    }

    /**
     * Get an array from a xml list
     *
     * @example
     * <xml>
     * <key>
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * <element k1='val1' k2='val2' k3='val3' />
     * </key>
     * </xml>
     *
     * @param string $key
     * @return array
     */
    public function xmlToArray()
    {
        $name = $this->getName();
        $result = $this->getAttrs();
        $elements = $this->getElements();
        foreach ($elements as $element) {
            $element instanceof XmlElement;
            $elementName = $element->getName();
            $result[$elementName] = $element->xmlToArray();
        }

        return $result;
    }

    /**
     * Get the XmlElement name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set the XmlElement name
     *
     * @param string $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * Get the attributes list
     *
     * @return array
     */
    public function getAttrs()
    {
        return $this->attributes;
    }

    /**
     * Validate if an elements exists
     *
     * @param string $name
     * @return bool
     */
    public function exists($name)
    {
        $elem = $this->getElement($name);
        return (!is_null($elem) && $elem !== 0);
    }

    /**
     * Create a XmlElement set the value and add it
     *
     * @param string $name
     * @param string $value
     */
    public function addElementValue($name, $value)
    {
        $newElement = new XmlElement($name);
        $newElement->setValue($value);
        $this->addElement($newElement);
    }

    /**
     * it loads an array recursively
     *
     * @param array $array
     */
    public function loadArray($array)
    {
        if ($array && is_array($array)) {
            $elementName = null;
            $isSequential = false;
            if (!Util::array_is_assoc(array_slice($array, 1)) && strlen($array ['name']) > 0) {
                $elementName = $array ['name'];
                $isSequential = true;
            } else if (!Util::array_is_assoc($array)) {
                $elementName = 'v'; //default element name
                $isSequential = true;
            }

            foreach ($array as $key => $value) {
                if (!$isSequential) {
                    $elementName = is_numeric($key) ? 'v' : $key;
                }

                if (is_array($value)) {
                    $newElement = new XmlElement($elementName);
                    $newElement->loadArray($value);
                    $this->addElement($newElement);
                } else if ($value && is_object($value)) {
                    $newElement = new XmlElement($elementName);
                    if (method_exists($value, 'toArray')) {
                        $data = call_user_func(array($value, 'toArray'));
                        $newElement->loadArray($data);
                    } else if (method_exists($value, 'toCDATA')) {
                        $data = call_user_func(array($value, 'toCDATA'));
                        $newElement->loadArray($data);
                        $newElement->setValue($data, true);
                    } else if ($value instanceof XmlElement) {
                        $newElement = $value;
                    } else {
                        $newElement->addAttr('class', get_class($value));
                    }
                    $this->addElement($newElement);
                } else {
                    if ($isSequential) {
                        $valueElement = new XmlElement($elementName);
                        $valueElement->setValue($value);
                        $this->addElement($valueElement);
                    } else {
                        $this->addAttr($elementName, $value);
                    }
                }
            }
        }
    }

    /**
     * Add an attribute
     *
     * @param string $key
     * @param string $value
     */
    public function addAttr($name, $value)
    {
        $this->attributes [$name] = trim($value);
    }

    /**
     * String representation of the object
     *
     * @return string
     */
    public function __toString()
    {
        $text = "<$this->name";
        foreach ($this->attributes as $key => $value) {
            //TODO: fix me
            $value = str_replace("\"", "&quot;", $value);
            //TODO: fix me
            $value = str_replace("&", "&amp;", $value);

            $text .= " $key=\"" . $value . '"';
        }
        $text .= ">";

        if ($this->isCDATA) {
            $text .= "<![CDATA[" . $this->value . "]]>";
        } else {
            $text .= $this->value;
        }

        foreach ($this->elements as $element) {
            $text .= $element;
        }
        $text .= "</$this->name>";

        return $text;
    }

    /**
     * Object representation of the XmlElement
     *
     * @return stdClass
     */
    public function toObject($target = null)
    {
        if (!$target) {
            $target = new stdClass;
        }

        foreach ($this->attributes as $key => $value) {
            $target->$key = $value;
        }

        foreach ($this->elements as $element) {
            $element instanceof XmlElement;
            $name = $element->getName();
            $value = $element->getValue();
            $target->$name = $value;
            if (count($element->getElements()) > 0) {
                $element->toObject($target);
            }
        }

        return $target;
    }

    /**
     * creates or add values to a sequential array
     *
     * @param string $key
     * @param array $row
     * @param mixed $value
     *
     * @return array
     */
    private function addToSequentialArray($key, $row, $value)
    {
        $result = array();
        $temp = $row [$key];

        if (!is_array($temp) || Util::array_is_assoc($temp))
            $result = array($temp, $value);
        else {
            $result = $temp;
            array_push($result, $value);
        }

        return $result;

    }

}

?>