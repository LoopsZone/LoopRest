<?php

class ExceptionManager extends Exception
{

    /**
     * default exception handler
     *
     * @param Exception $ex
     */
    public static function unhandledException($ex)
    {
        $unhandledEx = new UnhandledException($ex);
        self::handleException($unhandledEx);
    }

    /**
     * Handle the exception
     *
     * @param Exception $exception
     *
     * @return bool
     */
    public static function handleException($exception)
    {
        if (CoreConfig::PRINT_EXCEPTIONS) {
            echo Util::getNewLine();
            echo Util::getNewLine();
            echo Util::isCli() ? $exception : nl2br($exception);
            echo Util::getNewLine();
            echo Util::getNewLine();
        }

        $data = array();
        $data['exception'] = Encrypt::pack($exception);

        $notify = !Log::logExists(Log::LEVEL_EXCEPTION);
        Log::exception($exception);

        if ($notify) {
            //notify by email since this might be the first exception due to the file doesnt exists.
            //MailManager::sendCriticalErrorEmail("Event Notification (ExceptionEvent)", nl2br($exception));
        }

        return true;
    }

    /**
     * handle the errors that was not handled before.
     *
     * @param int $errorCode
     * @param string $errorMessage
     * @param string $file
     * @param int $line
     */
    public static function errorHandler($errorCode, $errorMessage, $file, $line)
    {

        if ((error_reporting() == 0) ||      //error has been supressed with an @
            !(error_reporting() & $errorCode) //error reporting has not this error code
        ) {
            return;
        }

        error_log($errorMessage);

        $abort = $print = false;
        $notify = !Log::logExists(Log::LEVEL_ERROR);
        switch ($errorCode) {
            case E_USER_ERROR:
                $type = "ERROR";
                $abort = $print = true;
                break;

            case E_USER_WARNING:
                $type = "WARNING";
                $print = true;
                break;

            case E_USER_NOTICE:
                $type = "NOTICE";
                break;

            default:
                $type = "SYSTEM";
                $print = true;
                break;
        }

        $newLine = "\n";

        $message = "Default error handler.$newLine$newLine";
        $message .= "Type: $type$newLine";
        $message .= "Date: " . date('m-d-Y H:i:s a') . "$newLine";
        $message .= "Error Code: $errorCode$newLine";
        $message .= "Details: $errorMessage$newLine";
        $message .= "Source: $file:$line$newLine$newLine";

        $details = $newLine;
        $details .= "Stack Trace:$newLine";
        $trace = debug_backtrace();
        if (is_array($trace)) {
            foreach ($trace as $t) {
                $file = $t['file'];
                $line = $t['line'];
                $function = $t['function'];
                $class = $t['class'];
                $type = $t['type'];
                $details .= "$file:$line$newLine";

                $details .= "$class$type$function$newLine";
            }
        }

        $message .= $details . $newLine . $newLine;

        Log::error("Not caught system error!\n\n$message");

        if ($notify) {
            //notify by email since this might be the first exception due to the file doesnt exists.
            MailManager::sendCriticalErrorEmail("Not caught system error!", nl2br($message));
        }
        if ($print) {
            if (Util::isDEV()) {
                echo Util::isCli() ? $message : nl2br($message);
            }
        }

        if ($abort) {
            exit(1);
        }
    }


}

?>