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

		$jobs = Profile::getList('SELECT * FROM profile p LEFT JOIN profile_expro pe ON p.id = pe.profile_id WHERE pe.profile_id = :id ORDER BY pe.date_job DESC', array('id' => $id));

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

	public function action() {

		$types = array('profile_company', 'profile_experience', 'profile_formation', 'profile_skill');
		$actions = array('create', 'update', 'delete');

		$type = $this->getParam(0, '');
		$action = $this->getParam(1, '');
		$id = $this->getParam(2, '');

		$class = 'Profile_'.ucfirst($type);

		$isPost = $this->request->isPost();

		$entity = new $class();

		$errors = array();
		if ($isPost) {

			print_r($this->request->post);

			foreach($entity->getFields() as $key => $value) {
				try {
					$entity->$key = $this->request->post($key, '');
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {

				if ($result = $entity->insert()) {

					$vars = array(
						$type => $entity
					);

					return $this->render('partials/profile-item-'.$type, $vars, true);
				}
			}
		}

		return json_encode(array('error' => 'Unable to handle '.$type.' '.$action));
	}

}