<?php
include_once('workflows.php');
include_once('sqlite.php');

define('HISTORY_DB', 'chrome_history.db');
define('UID', 'com.schmalfeldt.ChromeHistory');

$workflow = new Workflows;
$db = new HistoryDB();

$query = $argv[1];
$history = array();
$error = '';

if( !file_exists(HISTORY_DB))
{
	return_error(UID, 'Unable to Copy Chrome History into Alfred.');
	exit();
}

try
{
	$results = $db->query('select * from urls;');
	$error = $db->lastErrorMsg();

	if($error === '' || $error === 'not an error')
	{
		while($row = $results->fetchArray())
		{
			if( !empty($row['url']) && !empty($row['title']))
			{
				$history[$row['id']] = array(
					'id' => $row['id'],
					'url' => $row['url'],
					'title' => $row['title'],
					'visit_count' => $row['visit_count'],
					'typed_count' => $row['typed_count'],
					'last_visit_time' => $row['last_visit_time'],
					'hidden' => $row['hidden'],
					'favicon_id' => $row['favicon_id']
				);
			}
		}

		$history = array_reverse($history, true);
	}
	else if($error !== '' && $error !== 'not an error')
	{
		return_error(UID, $error);
		exit();
	}
}
catch(Exception $e)
{
	$error = $e->getMessage();
	return_error(UID, $error);
	exit();
}

// Keep track of shown results
$results = 0;

// Generate Output for Alfred
foreach ($history as $key=>$website)
{
	// Prepare Data
	$use_result = true;
	$data = array(
		'uid' => UID . ' result_' . $key,
		'arg' => $website['url'],
		'valid' => 'yes',
		'autocomplete' => '',
		'title' => $website['title'],
		'subtitle' => $website['url'],
		'icon' => 'icon.png'
	);

	// Check if we are Filtering Results
	if($query !== '')
	{
		// We did not find that query in this machine, so don't show it
		if (strpos(strtolower($website['title']), strtolower($query)) === false && strpos(strtolower($website['url']), strtolower($query)) === false)
		{
			$use_result = false;
		}
	}

	// Add the Machine to the Workflow Results
	if($use_result)
	{
		$workflow->result(
			$data['uid'],
			$data['arg'],
			$data['title'],
			$data['subtitle'],
			$data['icon'],
			$data['valid'],
			$data['autocomplete']
		);

		$results++;
	}
}

// Check if we had Zero Results
if($results === 0)
{
	// Prepare Data
	$data = array(
		'uid' => UID . ' no_results',
		'arg' => '',
		'valid' => 'no',
		'autocomplete' => '',
		'title' => ($query !== '') ? 'No Results' : 'ERROR: Chrome is Open',
		'subtitle' => ($query !== '') ? "No Websites Contained: \"{$query}\"" : 'We cannot update Alfred\'s copy of your Google Chrome History while Google Chrome is Open.',
		'icon' => 'icon.png'
	);

	// Add the Machine to the Workflow Results
	$workflow->result(
		$data['uid'],
		$data['arg'],
		$data['title'],
		$data['subtitle'],
		$data['icon'],
		$data['valid'],
		$data['autocomplete']
	);
}

function return_error($uid, $error)
{
	// Prepare Data
	$data = array(
		'uid' => UID . ' error',
		'arg' => '',
		'valid' => 'no',
		'autocomplete' => '',
		'title' => 'ERROR: Looks like there was a problem :(',
		'subtitle' => $error,
		'icon' => 'icon.png'
	);

	// Add the Machine to the Workflow Results
	$workflow = new Workflows;
	$workflow->result(
		$data['uid'],
		$data['arg'],
		$data['title'],
		$data['subtitle'],
		$data['icon'],
		$data['valid'],
		$data['autocomplete']
	);

	// Send Output to Alfred
	echo $workflow->toxml();
}

// Send Output to Alfred
echo $workflow->toxml();

// Prevent anything else from happening and exit
exit();
