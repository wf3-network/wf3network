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
	),

	'login/([0-9]+)' => array(
		'target' => 'login',
		'action' => 'login'
	),

	'contact/([0-9]+)' => array(
		'target' => 'contact',
		'action' => 'contact'
	),

	'login' => array(
		'target' => 'user',
		'action' => 'login'
	),
	'logout' => array(
		'target' => 'user',
		'action' => 'logout'
	),
	'register' => array(
		'target' => 'user',
		'action' => 'register'
	),
	'News' => array(
		'target' => 'news',
		'action' => 'news'
	),



	/* Footer pages */
	'cgu' => array(
		'target' => 'page',
		'action' => 'cgu'
	),
	'mentionslegales' => array(
		'target' => 'page',
		'action' => 'mentionslegales'
	),
	'charte' => array(
		'target' => 'page',
		'action' => 'charte'
	),

	'profile/([a-zA-Z-_]+)/([a-zA-Z-_]+)/?([0-9]*)' => array(
		'target' => 'profile',
		'action' => 'action'
	),

);