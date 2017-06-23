<?php

require_once DIRECTORY . 'system/globalConstants.class.php';

class globalSystem extends globalConstants
{
    public static $ignoreDirectories;

    public static function ignoreDirectories()
    {
        $folders = self::$directoriesToIgnore;

        $ignoreDirectories = '';

        foreach ($folders as $ignore) {
            $ignoreDirectories .= '|' . $ignore;
        }

        return $ignoreDirectories;
    }
}

globalSystem::$ignoreDirectories = globalSystem::ignoreDirectories();