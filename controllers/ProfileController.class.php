<?php

class ProfileController extends BaseController {

	public function view() {
		
		$params = $this->getParams();

		if (empty($params[0])) {
			throw new ActionControllerException('Undefined post id');
		}

		$id = (int) $params[0];


		$profile = Profile::get($id);

		$formations = Profile::getList('SELECT * FROM profile_formation INNER JOIN profile ON profile_formation.profile_id =  profile.id ORDER BY date_formation DESC');

		$jobs = Profile::getList('SELECT * FROM profile INNER JOIN profile_expro ON profile.id = profile_expro.profile_id ORDER BY date_job DESC');
		/*  */
		$vars = array(
			'profile' => $profile,
			'formations' => $formations,
			'jobs' => $jobs
		);


		$this->render('profile-full.tpl', $vars);
	}

}