<?php

class CompanyController extends BaseController {
  public function index() {
        $this->render('company-form');
  }
  	public function login() {

		$CompanyFormController = new User();

		$remember_me = $CompanyFormController->checkRememberMe();
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
					if (property_exists($CompanyFormController, $key)) {
						$CompanyFormController->$key = $this->request->post($key, '');
					}
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {
				$success = $CompanyFormController->checkLogin($remember_me);
			}

			if ($success === false) {
				$errors['authent'] = Lang::_('Authent failed');
			}
		}

		$form = $CompanyFormController->getLoginForm('create', ROOT_HTTP.$this->lang->getCompanyFormControllerLang().'/Entreprise/login', $this->request, $isPost, $errors);

		$vars = array(
			'title' => Lang::_('Login'),
			'isPost' => $isPost,
			'form' => $form,
			'errors' => $errors,
			'success' => $success,
			'CompanyFormController' => new CompanyFormController()
		);

		// $fb_active = API_Facebook::isActive();
		// if ($fb_active) {
		// 	$vars['fb_login_url'] = API_Facebook::getLoginUrl(ROOT_HTTP.'register');
		// }

		if ($success) {
			$vars['user'] = User::get($this->session->CompanyFormController_id);
		}

		return $this->render('authent', $vars, true);
	}

	public function register() {

		try {

			$errors = array();
			$success = false;
			$isPost = $this->request->isPost();

			$CompanyFormController = new User();

			// try {

			// 	$fb_active = API_Facebook::isActive();

			// 	if ($fb_active) {

			// 		$fb_CompanyFormController = $CompanyFormController->getFacebookCompanyFormController(ROOT_HTTP.'register');

			// 		if (!empty($fb_CompanyFormController)) {
			// 			return $this->render('authent', array('isPost'=>true,'success'=>true));
			// 		}
			// 	}
			// } catch (Exception $e) {
			// 	$errors['authent'] = $e->getMessage();
			// }

			// $confirm_email = $this->request->post('confirm_email', '');
			$confirm_password = $this->request->post('confirm_password', '');

			if ($isPost) {
				foreach($CompanyFormController->getFields() as $key => $value) {
					try {
						$CompanyFormController->$key = $this->request->post($key, '');
					} catch (Exception $e) {
						$errors[$key] = $e->getMessage();
					}
				}

				// if (empty($confirm_email) || strcmp($CompanyFormController->email, $confirm_email) !== 0) {
				// 	$errors['confirm_email'] = Lang::_('You must confirm your email');
				// }
				if (empty($confirm_password) || strcmp($CompanyFormController->password, $confirm_password) !== 0) {
					$errors['confirm_password'] = Lang::_('You must confirm your password');
				}

				if (empty($errors)) {

					$CompanyFormController_already_exists = $CompanyFormController->checkAlreadyExists();
					if ($CompanyFormController_already_exists === true) {
						$errors['mail'] = Lang::_('Email already in use');
					} else {

						$CompanyFormController->password = password_hash($CompanyFormController->password, PASSWORD_BCRYPT);

						$CompanyFormController_id = $CompanyFormController->register();

						if (!empty($CompanyFormController_id)) {
							$success = $this->login();
						} else {
							$errors['authent'] = Lang::_('Register failed');
						}
					}
				}
			}

			// $form = $CompanyFormController->getRegisterForm('create', ROOT_HTTP.$this->lang->getCompanyFormControllerLang().'/register', $this->request, $isPost, $errors);

			$vars = array(
				'title' => Lang::_('Register'),
				'isPost' => $isPost,
				// 'form' => $form,
				'errors' => $errors,
				'success' => $success
			);

		} catch (Exception $e) {
			$vars['debug'] = $e->getMessage();
		}

		$this->render('company-form', $vars);
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
