<?php

class DirectoryController extends BaseController {

  public function index() {

  	$page = (int) $this->getParam(0, 1);

	$profiles = Profile::getList('SELECT * FROM profile ORDER BY lastname DESC');

/*	$profiles = $pagination->results;
*/		$vars = array(
			'profiles' => $profiles,
			'page' => $page,
		);

/*		echo '<pre>';
		print_r($profiles);
		echo '</pre>';*/

    $this->render('directory', $vars);

  }

}
