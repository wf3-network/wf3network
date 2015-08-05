<?php

class HomeController extends BaseController {

	public function index() {

	  	$page = (int) $this->getParam(0, 1);

		$rand_profiles = Profile::getList('SELECT * FROM profile ORDER BY RAND() LIMIT 3');

		//$profiles = Profile::getList('SELECT p.* FROM profile p, user u WHERE u.id = p.user_id');

		$vars = array(
			'rand_profiles' => $rand_profiles,
			'page' => $page,
		);

		$this->render('index', $vars);

	}

}
