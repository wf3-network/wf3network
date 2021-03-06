<?php
class User extends Model {

	const USER_TYPE_STUDENT = 1;
	const USER_TYPE_COMPANY = 2;

	protected $id;
	protected $fb_id;
	protected $firstname;
	protected $lastname;
	protected $email;
	protected $password;
	protected $status;
	protected $newsletter;
	protected $cgu;
	protected $register_date;
	protected $type;

	private $session;

	public static $types = array(
		self::USER_TYPE_STUDENT => 'Étudiant',
		self::USER_TYPE_COMPANY => 'Entreprise'
	);

	public function __construct($data = array()) {
		parent::__construct($data);

		$this->session = Session::getInstance();
	}

	/* Getters */
	public function getId() {
		return $this->id;
	}
	public function getFbId() {
		return $this->fb_id;
	}
	public function getFirstname() {
		return $this->firstname;
	}
	public function getLastname() {
		return $this->lastname;
	}
	public function getEmail() {
		return $this->email;
	}
	public function getPassword() {
		return $this->password;
	}
	public function getStatus() {
		return $this->status;
	}
	public function getNewsletter() {
		return $this->newsletter;
	}
	public function getCgu() {
		return $this->cgu;
	}
	public function getRegisterDate() {
		return $this->register_date;
	}
	public function getType() {
		return $this->type;
	}

	/* Setters */
	public function setId($id) {
		$this->id = $id;
	}
	public function setFbId($fb_id) {
		$this->fb_id = $fb_id;
	}
	public function setFirstname($firstname) {
		if (empty($firstname)) {
			throw new Exception(Lang::_('Vous devez saisir votre prénom'));
		}
		$this->firstname = $firstname;
	}
	public function setLastname($lastname) {
		if (empty($lastname)) {
			throw new Exception(Lang::_('Vous devez saisir votre nom'));
		}
		$this->lastname = $lastname;
	}
	public function setEmail($email) {
		if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
			throw new Exception(Lang::_('Vous devez saisir une adresse mail valide'));
		}
		$this->email = $email;
	}
	public function setPassword($password) {
		if (strlen($password) < 6) {
			throw new Exception(Lang::_('Votre mot de passe doit être composé d&apos;au moins 6 caractères'));
		}
		$this->password = $password;
	}
	public function setStatus($status) {
		$this->status = $status;
	}
	public function setNewsletter($newsletter) {
		$this->newsletter = $newsletter;
	}
	public function setCgu($cgu) {
		$this->cgu = $cgu;
	}
	public function setRegisterDate($register_date) {
		$this->register_date = $register_date;
	}
	public function setType($type) {
		// if (empty($type)) {
		// 	throw new Exception(Lang::_('You must select your status'));
		//}
		$this->type = $type;
	}
	/* Misc */
	// public static function LoggedFirstname() {
	// 	return Session::getInstance()->firstname;
	// }
	//

	public function getProfile() {

		return new Profile(Db::selectOne('SELECT * FROM profile WHERE user_id = :user_id', array('user_id' => $this->id)));

	}

	public function getProfileCompany() {

		return new Profile_Company(Db::selectOne('SELECT * FROM profile_company WHERE user_id = :user_id', array('user_id' => $this->id)));

	}


	public static function getTypeLabel($type) {
		if (isset(self::$types[$type])) {
			return self::$types[$type];
		}
		return '';
	}

	public static function isLogged() {
		return Session::getInstance()->user_id;
	}

	public function checkRememberMe() {

		$remember_me = Authent::getRememberMe();

		if ($remember_me !== false) {

			$user_id = $remember_me;

			$user = self::get($user_id);

			if (!empty($user)) {
				return $user->login();
			}
		}

		return false;
	}

	public function checkLogin($remember_me = false) {

		$result = Db::selectOne('SELECT * FROM user WHERE email = :email', array('email' => $this->email));

		if (!empty($result)) {

			$user = new User($result);

			$crypted_password = $user->password;

			if (password_verify($this->password, $crypted_password)) {

				if (!empty($remember_me)) {
					Authent::setRememberMe($user->id);
				}

				return $user->login();
			}
		}
		return false;
	}

	public function checkAlreadyExists() {
		if (empty($this->email)) {
			return false;
		}
		$user = Db::select('SELECT * FROM user WHERE email = :email', array('email' => $this->email));
		if (!empty($user)) {
			return true;
		}
		return false;
	}

	public function getLoginForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form('', 'form-login', $action, 'POST', 'form-horizontal', $isPost, 'Valider');
		$form->addField('email', Lang::_('E-mail'), 'email', $this->_getfieldvalue('email', $type, $request), true, '', !empty($errors['authent']) ? true : false);
		$form->addField('password', Lang::_('Mot de passe'), 'password', '', true, '', !empty($errors['authent']) ? true : false);
		$form->addField('remember_me', Lang::_('Se souvenir de moi'), 'checkbox', $this->_getfieldvalue('remember_me', $type, $request), false, '');

		return $form;
	}

	public function login() {
		if (!$this->session->isActive()) {
			return false;
		}
		$this->session->user_id = $this->id;
		$this->session->firstname = $this->firstname;
		return true;
	}

	public function getRegisterForm($type, $action, $request, $isPost = false, $errors = array()) {

		$types_select = array();
		foreach(User::$types as $type => $label) {
			$types_select[] = array('id' => $type, 'name' => $label);
		}

		$form = new Form('', 'form-register', $action, 'POST', 'form-horizontal', $isPost, 'Inscription');
		$form->addField('type', Lang::_('Type'), 'select', $this->_getfieldvalue('type', $type, $request), true, '', @$errors['type'], null, null, $types_select);
		$form->addField('firstname', Lang::_('Prénom'), 'text', $this->_getfieldvalue('firstname', $type, $request), true, '', @$errors['firstname']);
		$form->addField('lastname', Lang::_('Nom'), 'text', $this->_getfieldvalue('lastname', $type, $request), true, '', @$errors['lastname']);
		$form->addField('email', Lang::_('E-mail'), 'email', $this->_getfieldvalue('email', $type, $request), true, '', @$errors['email']);
		$form->addField('confirm_email', Lang::_('Confirmez votre e-mail'), 'email', $this->_getfieldvalue('confirm_email', $type, $request), true, '', @$errors['confirm_email']);
		$form->addField('password', Lang::_('Mot de passe'), 'password', '', true, '', @$errors['password']);
		$form->addField('confirm_password', Lang::_('Confirmez votre mot de passe'), 'password', '', true, '', @$errors['confirm_password']);
		$form->addField('newsletter', Lang::_('Inscription à la newsletter'), 'checkbox', $this->_getfieldvalue('newsletter', $type, $request), false, '');
		$form->addField('cgu', Lang::_('J&apos;accepte les <a href="../cgu" target="_blank">conditions d&apos;utilisation</a>'), 'checkbox', $this->_getfieldvalue('cgu', $type, $request), true, '', @$errors['cgu']);

		return $form;
	}

	public function register() {
		return Db::insert(
		   'INSERT INTO user (type, lastname, firstname, email, password, newsletter, cgu, register_date)
			VALUES (:type, :lastname, :firstname, :email, :password, :newsletter, :cgu, NOW())',
			array(
				'type' => $this->type,
				'lastname' => $this->lastname,
				'firstname' => $this->firstname,
				'email' => $this->email,
				'password' => $this->password,
				'newsletter' => $this->newsletter,
				'cgu' => $this->cgu
			)
		);
	}

	public function getFacebookUser($register_url) {

		$fb_user = API_Facebook::getUser($register_url);

		if (empty($fb_user) || !is_object($fb_user)) {
			return false;
		}

		foreach($this->getFields() as $key => $value) {
			if (property_exists($fb_user, $key)) {
				$this->$key = $fb_user->$key;
			}
		}

		// @FIXME
		$this->password = password_hash($this->fb_id.'-'.$this->email, PASSWORD_BCRYPT);

		$fb_user = Db::selectOne('SELECT * FROM user WHERE fb_id = :fb_id', array('fb_id' => $this->fb_id));
		if (!empty($fb_user)) {
			$user = new User($fb_user);
			return $user->login();
		}

		$this->id = $this->facebookRegister();
		if (!empty($this->id)) {
			return $this->login();
		}
	}

	public function facebookRegister() {
		return Db::insert(
			'INSERT INTO user SET firstname = :firstname, lastname = :lastname, email = :email, password = :password, fb_id = :fb_id, cgu = 1, register_date = NOW()
			 ON DUPLICATE KEY UPDATE firstname = :firstname, lastname = :lastname, email = :email, password = :password, fb_id = :fb_id, cgu = 1',
			 array(
				'fb_id' => $this->fb_id,
				'firstname' => $this->firstname,
				'lastname' => $this->lastname,
				'email' => $this->email,
				'password' => $this->password
			 )
		);
	}

}
