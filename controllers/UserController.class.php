<?php

class UserController extends BaseController {

	public function login() {

		$user = new User();

		$remember_me = $user->checkRememberMe();
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
					if (property_exists($user, $key)) {
						$user->$key = $this->request->post($key, '');
					}
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {
				$success = $user->checkLogin($remember_me);
			}

			if ($success === false) {
				$errors['authent'] = Lang::_('Échec de l&apos;authentification');
			}
		}

		$form = $user->getLoginForm('create', ROOT_HTTP.$this->lang->getUserLang().'/user/login', $this->request, $isPost, $errors);

		$vars = array(
			'title' => Lang::_('Connexion'),
			'isPost' => $isPost,
			'form' => $form,
			'errors' => $errors,
			'success' => $success,
			'user' => new User()
		);

		$fb_active = API_Facebook::isActive();
		if ($fb_active) {
			$vars['fb_login_url'] = API_Facebook::getLoginUrl(ROOT_HTTP.'register');
		}

		if ($success) {
			$vars['user'] = User::get($this->session->user_id);
		}

		return $this->render('authent', $vars, true);
	}

	public function register() {

		try {

			$errors = array();
			$success = false;
			$isPost = $this->request->isPost();

			$user = new User();

			try {

				$fb_active = API_Facebook::isActive();

				if ($fb_active) {

					$fb_user = $user->getFacebookUser(ROOT_HTTP.'register');

					if (!empty($fb_user)) {
						return $this->render('authent', array('isPost'=>true,'success'=>true));
					}
				}
			} catch (Exception $e) {
				$errors['authent'] = $e->getMessage();
			}

			$confirm_email = $this->request->post('confirm_email', '');
			$confirm_password = $this->request->post('confirm_password', '');

			if ($isPost) {
				foreach($user->getFields() as $key => $value) {
					try {
						$user->$key = $this->request->post($key, '');
					} catch (Exception $e) {
						$errors[$key] = $e->getMessage();
					}
				}

				if (empty($confirm_email) || strcmp($user->email, $confirm_email) !== 0) {
					$errors['confirm_email'] = Lang::_('Vous devez confirmer votre e-mail');
				}
				if (empty($confirm_password) || strcmp($user->password, $confirm_password) !== 0) {
					$errors['confirm_password'] = Lang::_('Vous devez confirmer votre mot de passe');
				}

				if (empty($errors)) {

					$user_already_exists = $user->checkAlreadyExists();
					if ($user_already_exists === true) {
						$errors['mail'] = Lang::_('Cet e-mail est déjà utilisé');
					} else {

						$user->password = password_hash($user->password, PASSWORD_BCRYPT);

						$user_id = $user->id = $user->register();

						if (!empty($user_id)) {
							$success = $user->login();
						} else {
							$errors['authent'] = Lang::_('Enregistrement échoué');
						}
					}
				}
			}

			$form = $user->getRegisterForm('create', ROOT_HTTP.$this->lang->getUserLang().'/user/register', $this->request, $isPost, $errors);

			$vars = array(
				'title' => Lang::_('Créer un compte'),
				'isPost' => $isPost,
				'form' => $form,
				'errors' => $errors,
				'success' => $success,
				'user' => $user
			);

		} catch (Exception $e) {
			$vars['debug'] = $e->getMessage();
		}

		return $this->render('authent', $vars);
	}

	public function logout() {

		$success = Authent::logout();

		$vars = array(
			'title' => Lang::_('Déconnexion'),
			'isPost' => true,
			'success' => $success
		);

		// quand on se déconnecte on est automatiquement redirigé vers l'index pour qu'il n'arrive pas sur la page AJAX
		$this->response->redirect(ROOT_HTTP);
		//return $this->render('authent', $vars);
	}

}
