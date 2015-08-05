<?php

class EntrepriseController extends BaseController {

	public function login() {

		$EntrepriseController = new EntrepriseController();

		$remember_me = $EntrepriseController->checkRememberMe();
		if ($remember_me === true) {
			$this->response->redirect(ROOT_HTTP);
		}

		$errors = array();
		$success = false;
		$isPost = $this->request->isPost();

		$remember_me = $this->request->post('remember_me', '');

		if ($isPost) {

			foreach($this->request->post as $key => $value) {
				try {
					if (property_exists($EntrepriseController, $key)) {
						$EntrepriseController->$key = $this->request->post($key, '');
					}
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {
				$success = $EntrepriseController->checkLogin($remember_me);
			}

			if ($success === false) {
				$errors['authent'] = Lang::_('Authent failed');
			}
		}

		$form = $EntrepriseController->getLoginForm('create', ROOT_HTTP.$this->lang->getEntrepriseControllerLang().'/Entreprise/login', $this->request, $isPost, $errors);

		$vars = array(
			'title' => Lang::_('Login'),
			'isPost' => $isPost,
			'form' => $form,
			'errors' => $errors,
			'success' => $success,
			'EntrepriseController' => new EntrepriseController()
		);

		// $fb_active = API_Facebook::isActive();
		// if ($fb_active) {
		// 	$vars['fb_login_url'] = API_Facebook::getLoginUrl(ROOT_HTTP.'register');
		// }

		if ($success) {
			$vars['EntrepriseController'] = EntrepriseController::get($this->session->EntrepriseController_id);
		}

		return $this->render('authent', $vars, true);
	}

	public function register() {

		try {

			$errors = array();
			$success = false;
			$isPost = $this->request->isPost();

			$EntrepriseController = new EntrepriseController();

			// try {

			// 	$fb_active = API_Facebook::isActive();

			// 	if ($fb_active) {

			// 		$fb_EntrepriseController = $EntrepriseController->getFacebookEntrepriseController(ROOT_HTTP.'register');

			// 		if (!empty($fb_EntrepriseController)) {
			// 			return $this->render('authent', array('isPost'=>true,'success'=>true));
			// 		}
			// 	}
			// } catch (Exception $e) {
			// 	$errors['authent'] = $e->getMessage();
			// }

			// $confirm_email = $this->request->post('confirm_email', '');
			$confirm_password = $this->request->post('confirm_password', '');

			if ($isPost) {
				foreach($EntrepriseController->getFields() as $key => $value) {
					try {
						$EntrepriseController->$key = $this->request->post($key, '');
					} catch (Exception $e) {
						$errors[$key] = $e->getMessage();
					}
				}

				// if (empty($confirm_email) || strcmp($EntrepriseController->email, $confirm_email) !== 0) {
				// 	$errors['confirm_email'] = Lang::_('You must confirm your email');
				// }
				if (empty($confirm_password) || strcmp($EntrepriseController->password, $confirm_password) !== 0) {
					$errors['confirm_password'] = Lang::_('You must confirm your password');
				}

				if (empty($errors)) {

					$EntrepriseController_already_exists = $EntrepriseController->checkAlreadyExists();
					if ($EntrepriseController_already_exists === true) {
						$errors['mail'] = Lang::_('Email already in use');
					} else {

						$EntrepriseController->password = password_hash($EntrepriseController->password, PASSWORD_BCRYPT);

						$EntrepriseController_id = $EntrepriseController->register();

						if (!empty($EntrepriseController_id)) {
							$success = $this->login();
						} else {
							$errors['authent'] = Lang::_('Register failed');
						}
					}
				}
			}

			$form = $EntrepriseController->getRegisterForm('create', ROOT_HTTP.$this->lang->getEntrepriseControllerLang().'/Entreprise/register', $this->request, $isPost, $errors);

			$vars = array(
				'title' => Lang::_('Register'),
				'isPost' => $isPost,
				'form' => $form,
				'errors' => $errors,
				'success' => $success
			);

		} catch (Exception $e) {
			$vars['debug'] = $e->getMessage();
		}

		return $this->render('authent', $vars);
	}

	public function logout() {

		$success = Authent::logout();

		$vars = array(
			'title' => Lang::_('Logout'),
			'isPost' => true,
			'success' => $success
		);

		// quand on se déconnecte on est automatiquement redirigé vers l'index pour qu'il n'arrive pas sur la page AJAX
		$this->response->redirect(ROOT_HTTP);
		//return $this->render('authent', $vars);
	}

}