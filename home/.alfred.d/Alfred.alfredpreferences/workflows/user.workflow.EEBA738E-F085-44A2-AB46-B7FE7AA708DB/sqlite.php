<?php
class HistoryDB extends SQLite3
{
	function __construct()
	{
		$whoami = `whoami`;
		$user = rtrim($whoami, "\n");
		$history_file = "/Users/{$user}/Library/Application Support/Google/Chrome/Default/History";
		$history_copy = 'chrome_history.db';
		$cache_life = '60'; // caching time, in seconds

		// Check if there is a History File for Chrome
		if(file_exists($history_file))
		{
			// Check if there is a local copy of the file we can read, and that it is not to old
			if( !file_exists($history_copy) || (file_exists($history_copy) && (time() - filemtime($history_copy)) >= $cache_life))
			{
				$cp = `cp "{$history_file}" {$history_copy}`;
			}

			// Make Connection to SQLite
			$this->open($history_copy, SQLITE3_OPEN_READONLY);
		}
	}
}
