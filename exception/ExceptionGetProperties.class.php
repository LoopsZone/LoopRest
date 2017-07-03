<?php

class ExceptionGetProperties extends ExceptionManager
{
    function __construct($errorMap)
    {
        $expected = key($errorMap);
        if (key_exists('error', $errorMap[$expected])) {
            $message = array();
            $secondMessage = array();
            foreach ($errorMap[$expected] as $error) {
                if (key($error) == 'error') {
                    foreach ($error as $param => $value) {
                        if ($param == $expected) {
                            $message = "The key {$param} have a problem when this set in the setVariables the value setting is {$value}.";
                        } else {
                            $secondMessage[] = "Others problem in settings during build system requirement its {$param} with setting value {$value}";
                        }
                    }
                } else {

                }
            }
        }

        $message = array_merge($message, $secondMessage);

        parent::handleException($message);
    }
}