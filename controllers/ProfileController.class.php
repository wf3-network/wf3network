<?php

class ProfileController extends BaseController {

	public function view() {

		$params = $this->getParams();
		if (empty($params[0])) {
			throw new ActionControllerException('Undefined post id');
		}

		$id = (int) $params[0];

		$profile = Profile::get($id);

		$formations = Profile::getList('SELECT * FROM profile p LEFT JOIN profile_formation pf ON pf.profile_id = p.id WHERE pf.profile_id = :id ORDER BY pf.date_formation DESC', array('id' => $id));

		$jobs = Profile::getList('SELECT * FROM profile p LEFT JOIN profile_experience pe ON p.id = pe.profile_id WHERE pe.profile_id = :id ORDER BY pe.date_job DESC', array('id' => $id));

		/*  */
		$vars = array(
			'profile' => $profile,
			'formations' => $formations,
			'jobs' => $jobs
		);

		// Gère la vue sur les profils: si loggé voit profil complet sinon profil simple
		if (User::isLogged()) {
			$this->render('profile-full.tpl', $vars);
		}else{
			$this->render('profile-simple.tpl', $vars);
		}
	}

	public function company() {

		$isPost = $this->request->isPost();

		$profile_company = new Profile_Company();

		$errors = array();
		if ($isPost) {

			foreach($profile_company->getFields() as $key => $value) {
				try {
					$profile_company->$key = $this->request->post($key, '');
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {

				if ($result = $profile_company->insert()) {
					$this->response->redirect(ROOT_HTTP);
				}
			}
		}

		$form = $profile_company->getForm($id = 'form-profile-company', $name = 'form-profile-company', $action = ROOT_HTTP.'profile/company', 'POST', 'form-horizontal', $errors, $isPost);

		$vars['form'] = $form;

		$this->render('company-form', $vars);
	}

	public function cvform() {

    	$isPost = $this->request->isPost();

    	if (!User::isLogged()) {
    		$this->response->redirect(ROOT_HTTP.'login');
    	}

    	$profile = new Profile();

    	$vars = array();
		$errors = array();
		if ($isPost) {

			foreach($profile->getFields() as $key => $value) {
				try {
					$profile->$key = $this->request->post($key, '');
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {

				if ($result = $profile->insert()) {
					$this->response->redirect(ROOT_HTTP.'profile/cvform');
				}
			}
		}

		$profile->user_id = $this->session->user_id;

		$profile = $this->user->getProfile();

		$experiences = $profile->getExperiences();
		$formations = $profile->getFormations();
		
		$vars = array(
			'user' => $this->user,
			'profile' => $profile,
			'experiences' => $experiences,
			'formations' => $formations,
			'experience' => new Profile_Experience(),
			'formation' => new Profile_Formation(),
		);

		/*
		echo '<pre>';    
		print_r($vars);
		echo '</pre>';
		*/

    	$this->render('cv-form', $vars);

 	}

	public function action() {

		$types = array('profile_experience', 'profile_formation', 'profile_skills', 'profile_project');
		$actions = array('create', 'update', 'delete');

		$type = $this->getParam(0, '');
		$action = $this->getParam(1, '');
		$id = (int) $this->getParam(2, 0);

		$class = 'Profile_'.ucfirst($type);

		$isPost = $this->request->isPost();

		$profile = $this->user->getProfile();

		$entity = new $class();
		$entity->profile_id = $profile->id;

		if (!empty($id)) {
			$entity = $entity::get($id);
		}

		$vars = array();
		$success = false;
		$errors = array();
		if ($isPost) {

			// print array with post items
			//print_r($this->request->post);

			if ($action != 'delete') {			
				foreach($this->request->post as $key => $value) {
					try {
						if (property_exists($entity, $key)) {
							$entity->$key = $this->request->post($key, '');
						}
					} catch (Exception $e) {
						$errors[$key] = $e->getMessage();
					}	
				}
			}


			if (empty($errors)) {

				switch($action) {
					case 'create':
						$entity->id = $entity->insert();
						$success = true;
					break;
					case 'update':
						$success = $entity->update();
					break;
					case 'delete':
						$success = $entity->delete();
					break;
				}
				
				if ($success) {
					$entity = new $entity();
					$isPost = false;
				}

			}
		}

		
		$experiences = $profile->getExperiences();
		$formations = $profile->getFormations();


		$vars = array(
			'isPost' => $isPost,
			'errors' => $errors,
			$type => $entity,
			'experiences' => $experiences,
			'formations' => $formations
		);

		return $this->render('partials/cv-'.$type, $vars, true);
		//return json_encode(array('error' => 'Unable to handle '.$type.' '.$action));
	}

}