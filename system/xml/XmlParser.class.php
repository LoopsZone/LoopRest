<?php

/**
 * Gustavo Granados
 * code is poetry
 */
class XmlParser
{
    /**
     * Xml Parser reference
     *
     * @var resource
     */
    private $xmlParser;

    /**
     * XmlElement
     *
     * @var XmlElement
     */
    private $currentXmlElement;

    /**
     * this contains all the sub elements
     *
     * @var array
     */
    private $elementStack = array();

    /**
     * XmlElement Root
     *
     * @var XmlElement
     */
    private $root;

    /**
     * error code of the last parse
     *
     * @var int
     */
    private $errorCode = 0;

    /**
     * error message of the last parse
     *
     * @var string
     */
    private $errorMsg = 'Ok';

    /**
     * default encoding
     *
     * @var string
     */
    private $encoding;

    /**
     * Initialize the object.
     */
    public function __construct()
    {
        $this->encoding = CoreConfig::SYS_ENCODING;
    }

    /**
     * clean and release the object
     */
    public function __destruct()
    {
        if (is_resource($this->xmlParser)) {
            xml_parser_free($this->xmlParser);
        }
    }

    /**
     * @return int
     */
    public function getErrorCode()
    {
        return $this->errorCode;
    }

    /**
     * @return string
     */
    public function getErrorMsg()
    {
        return $this->errorMsg;
    }

    /**
     * set a new encoding
     *
     * @param string $encoding
     */
    public function setEnconding($encoding)
    {
        $this->encoding = $encoding;
    }

    /**
     * Parse a xml string<br/>
     * if $addWrapper is true the string will be surrounded by
     * &lt;xml&gt;$data&lt;&#47;xml&gt;
     *
     * @param $data string
     * @param $addWrapper bool
     *
     * @return XmlElement
     */
    public function loadXml($data, $addWrapper = false)
    {
        if ($addWrapper) {
            $data = "<xml>$data</xml>";
        }

        $this->setup();

        $res = xml_parse($this->xmlParser, $data);
        $this->errorCode = xml_get_error_code($this->xmlParser);
        $this->errorMsg = xml_error_string($this->errorCode);

        if (!$res) {
            $sid = WSProcessor::getSessionId();
            Log::custom("XML-PARSE-ERROR", "\nSID: $sid\nData: $data\nCode: {$this->errorCode} - Message: {$this->errorMsg}\n");
        }
        return $this->root;
    }

    /**
     * prepare the class for the parsing process
     */
    private function setup()
    {
        if (is_resource($this->xmlParser)) {
            xml_parser_free($this->xmlParser);
        }

        $this->xmlParser = xml_parser_create('');

        xml_set_object($this->xmlParser, $this);
        xml_set_element_handler($this->xmlParser, "startElement", "endElement");
        xml_set_character_data_handler($this->xmlParser, "characterData");

        xml_parser_set_option($this->xmlParser, XML_OPTION_CASE_FOLDING, false);
        xml_parser_set_option($this->xmlParser, XML_OPTION_SKIP_WHITE, true);
        xml_parser_set_option($this->xmlParser, XML_OPTION_TARGET_ENCODING, $this->encoding);

        $this->root = null;
    }

    /**
     * checks if a string is a xml
     *
     * @param $data string
     *
     * @return boolean
     */
    public function checkXml($data)
    {
        $this->setup();

        return xml_parse($this->xmlParser, $data);;
    }

    /**
     * callback when an element is found
     *
     * @param $parser XmlParser
     * @param $element string
     * @param $attrs array
     */
    private function startElement($parser, $element, $attrs)
    {
        if (!$this->root) {
            $this->root = new XmlElement($element);
            array_push($this->elementStack, $this->root);
            $this->currentXmlElement = $this->root;
        } else {
            $newElement = new XmlElement($element);
            $this->currentXmlElement->addElement($newElement);
            array_push($this->elementStack, $newElement);
            $this->currentXmlElement = $newElement;
        }

        foreach ($attrs as $key => $attr) {
            $this->currentXmlElement->addAttr($key, $attr);
        }
    }

    /**
     * callback when an element needs to be closed
     *
     * @param XmlParser $parser
     * @param string $element
     */
    private function endElement($parser, $element)
    {
        array_pop($this->elementStack);
        $this->currentXmlElement = array_pop($this->elementStack);
        array_push($this->elementStack, $this->currentXmlElement);
    }

    /**
     * callback when an element has a text value
     *
     * @param XmlParser $parser
     * @param string $data
     */
    private function characterData($parser, $data)
    {
        $this->currentXmlElement->addValue($data);
    }
}

?>