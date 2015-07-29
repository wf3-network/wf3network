<?php

global $routes;

$routes = array(
	/* Front */
	'/' => array(
		'target' => DEFAULT_CONTROLLER_TARGET,
		'action' => DEFAULT_CONTROLLER_ACTION
	),
	'directory/([0-9]+)' => array(
		'target' => 'directory',
		'action' => 'annuaire'
	)


);