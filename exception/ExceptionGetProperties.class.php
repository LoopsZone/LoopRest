<?php

class ExceptionGetProperties extends ExceptionManager
{
    function __construct($errorMap)
    {
        $expected = key($errorMap);

        if (key_exists(Expected::ExpRouteError, $errorMap[$expected])) {

            $mistakes = $errorMap[$expected][Expected::ExpRouteError];
            $settingValues = $errorMap[$expected][ExpectVariables::ExpSetVariables];

            if ($mistakes) {

                $helpMessage = '';
                $secondMessage = array();

                foreach ($mistakes as $error => $message) {

                    $value = $settingValues[$error];

                    if ($error == $expected) {
                        $helpMessage = "The key {$error} have a problem when this set in the setVariables, the value setting is {$value}.";
                    } else {
                        $secondMessage[] = "Others problem in settings during build system requirement its {$error} with setting value {$value}";
                    }
                }

                $message = array();
                $message[] = $helpMessage;
                $message[] = $secondMessage;

                parent::handleException($message);

                return $mistakes;
            }
        }

        Throw new GeneralException;
    }
}