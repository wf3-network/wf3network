<?php
class Cvform extends Model {

	protected $id;
	protected $photo;
	protected $lastname;
	protected $firstname;
	protected $date_promo;
	protected $age;
	protected $mail;
	protected $telephone;
	protected $site;
	protected $formation;
	protected $exp_pro;

	protected $project_name;
	protected $skill_wf3;
	protected $cgu;

/*	public function getForm($id = '', $name = '', $action = '', $method = 'POST', $class = 'form-horizontal', $errors = array(), $isPost = false) {

		$form = new Form($id, $name, $action, $method, $class, $isPost);
		$form->addField('lastname', Lang::_('Lastname'), 'text', $this->lastname, true, '', @$errors['lastname']);
		$form->addField('firstname', Lang::_('Firstname'), 'text', $this->firstname, true, '', @$errors['firstname']);
		$form->addField('email', Lang::_('Email'), 'email', $this->email, true, '', @$errors['email']);
		$form->addField('message', Lang::_('Message'), 'textarea', $this->message, true, '', @$errors['message']);
		$form->addField('newsletter', Lang::_('Subscribe to the newsletter'), 'checkbox', $this->newsletter, false);
		$form->addField('cgu', Lang::_('Accept the CGU'), 'checkbox', $this->cgu, true, '', @$errors['cgu']);

		return $form->render();
	}*/

	/* Getters */
	public function getId() {
		return $this->id;
	}
	public function getFirstname() {
		return $this->firstname;
	}
	public function getLastname() {
		return $this->lastname;
	}
	public function getPromo() {
		return $this->promo;
	}
	public function getAge() {
		return $this->age;
	}
	public function getMail() {
		return $this->mail;
	}
	public function getTelephone() {
		return $this->telephone;
	}
	public function getSite() {
		return $this->site;
	}
	public function getSkill_wf3() {
		return $this->skill_wf3;
	}
	public function getProject_name() {
		return $this->project_name;
	}
	public function getExp_pro() {
		return $this->exp_pro;
	}
	public function getFormation() {
		return $this->formation;
	}
	public function getPhoto() {
		return $this->photo;
	}
	public function getCgu() {
		return $this->cgu;
	}



	/* Setters */
	public function setId($id) {
		$this->id = $id;
	}
	public function setLastname($lastname) {
		if (empty($lastname)) {
			throw new Exception(Lang::_('You must fill your lastname'));
		}
		$this->lastname = $lastname;
	}
	public function setFirstname($firstname) {
		if (empty($firstname)) {
			throw new Exception(Lang::_('You must fill your firstname'));
		}
		$this->firstname = $firstname;
	}
	public function setPromo($promo) {
		if (empty($promo)) {
			throw new Exception(Lang::_('You must fill your promo'));
		}
		$this->promo = $promo;
	}
	public function setAge($age) {
		if (empty($age)) {
			throw new Exception(Lang::_('You must fill your age'));
		}
		$this->age = $age;
	}
	public function setTelephone($telephone) {
		if (empty($telephone)) {
			throw new Exception(Lang::_('You must fill your telephone'));
		}
		$this->telephone = $telephone;
	}
	public function setSite($site) {
		if (empty($site)) {
			throw new Exception(Lang::_('You must fill your site'));
		}
		$this->site = $site;
	}
	public function setSkill_wf3($skill_wf3) {
		if (empty($skill_wf3)) {
			throw new Exception(Lang::_('You must fill your skills'));
		}
		$this->skill_wf3 = $skill_wf3;
	}
	public function setMail($mail) {
		if (empty($mail) || !filter_var($project_name, FILTER_VALIDATE_EMAIL)) {
			throw new Exception(Lang::_('You must fill a valid email'));
		}
		$this->mail = $mail;
	}
	public function setProject_name($project_name) {
		if (empty($project_name)) {
			throw new Exception(Lang::_('You must fill the project name'));
		}
		$this->project_name = strip_tags($project_name);
	}
	public function setExp_pro($exp_pro) {
		if (empty($exp_pro)) {
			throw new Exception(Lang::_('You must fill your pro exp'));
		}
		$this->exp_pro = strip_tags($exp_pro);
	}
	public function setFormation($formation) {
		$this->formation = $formation;
	}
	public function setPhoto($photo) {
		if (empty($photo)) {
			throw new Exception(Lang::_('You must add a photo'));
		}
		$this->photo = $photo;
	}
	public function setCgu($cgu) {
		if (empty($cgu)) {
			throw new Exception(Lang::_('You have to accept the ToS'));
		}
		$this->cgu = $cgu;
	}
	public function insert() {

		return Db::insert(
			'INSERT INTO profile (lastname, firstname, date_promo, age, mail, telephone, site, skill_wf3, project_name, exp_pro, formation, photo, cgu);
		 	 VALUES (:lastname, :firstname, :date_promo, :age, :mail, :telephone, :site, :skill_wf3, :project_name, :exp_pro, :formation, :photo, :cgu)',
			array(
				'lastname' => $this->lastname,
				'firstname' => $this->firstname,
				'date_promo' => $this->date_promo,
				'age' => $this->age,
				'mail' => $this->mail,
				'telephone' => $this->telephone,
				'site' => $this->site,
				'skill_wf3' => $this->skill_wf3,
				'project_name' => $this->project_name,
				'exp_pro' => $this->exp_pro,
				'formation' => $this->formation,
				'photo' => $this->photo,
				'cgu' => (int) $this->cgu,
			)
		);
	}
}