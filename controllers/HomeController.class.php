<?php

class HomeController extends BaseController {

	public function index() {

  	$page = (int) $this->getParam(0, 1);

	$rand_profiles = Profile::getList('SELECT * FROM profile ORDER BY RAND() LIMIT 3');

	// $profile = Profile::getList('SELECT * FROM profile p LEFT JOIN profile_formation pf ON pf.profile_id = p.id WHERE pf.profile_id = :id ORDER BY pf.date_formation DESC', array('id' => $id));

	$profile = Profile::getList('SELECT * FROM user u LEFT JOIN profile p ON p.id = u.profile_id');

	$vars = array(
			'profile' => $profile,
			'rand_profiles' => $rand_profiles,
			'page' => $page,
		);

		$this->render('index', $vars);

	}

}
