<?php

class HomeController extends BaseController {

	public function index() {

	  	$page = (int) $this->getParam(0, 1);

		$rand_profiles_query = Db::select('SELECT p.*, u.firstname, u.lastname FROM profile p, user u WHERE p.user_id = u.id ORDER BY RAND() LIMIT 3');
		$rand_profiles = array();
		foreach($rand_profiles_query as $rand_profile) {
			$rand_profiles[] = (Object) $rand_profile;
		}
		
		//$profiles = Profile::getList('SELECT p.* FROM profile p, user u WHERE u.id = p.user_id');

		$vars = array(
			'rand_profiles' => $rand_profiles,
			'page' => $page,
		);

		$this->render('index', $vars);

	}

}
