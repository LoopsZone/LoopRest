<?php

class Error extends ExceptionManager
{
    protected $messageResponse = array();

    public function getMessageResponse()
    {
        $messageResponse = array();

        foreach ($this->messageResponse[Expected::ExpRouteError] as $code => $message) {
            $messageResponse[Expected::ExpRouteError][Expected::ExpErrorCode][] = $code;
            $messageResponse[Expected::ExpRouteError][Expected::ExpErrorDesc][] = $message;
        }

        return $messageResponse;
    }
}