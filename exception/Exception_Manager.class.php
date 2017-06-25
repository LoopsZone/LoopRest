<?php

class Exception_Manager extends Exception
{
    protected $message = 'Unknown exception';     // Exception message
    protected $code = 0;                            // Unknown
    protected $file;                       // User-defined exception code
    protected $line;                              // Source filename of exception
    private $string;                              // Source line of exception
    private $trace;                             // Unknown

    public function __construct($message = null, $code = 0)
    {
        if (!$message) {
            throw new $this('Unknown ' . get_class($this));
        }
        parent::__construct($message, $code);
    }

    public function __toString()
    {
        return get_class($this) . " '{$this->message}' in {$this->file}({$this->line})\n"
        . "{$this->getTraceAsString()}";
    }
}