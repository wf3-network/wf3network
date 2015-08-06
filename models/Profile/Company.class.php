<?php
class Profile_Company extends Model {

    protected $id;
    protected $company_name;
    protected $function;
    protected $user_id;
    protected $publish;

    public function getId() {
    	return $this->id;
    }
    public function getUserId() {
    	return $this->user_id;
    }
	public function getCompanyName() {
		return $this->company_name;
	}
	public function getFunction() {
		return $this->function;
	}

	public function getPublish() {
		return $this->publish;
	}

	public function setId($id){
		$this->id = $id;
	}
	public function setUserId($user_id) {
    	$this->user_id = $user_id;
    }
	public function setCompanyName($company_name){
		if (empty($company_name)) {
	      throw new Exception(Lang::_('You must fill your Company name'));
	    }
		$this->company_name = $company_name;
	}
	public function setFunction($function){
		if (empty($function)) {
	      throw new Exception(Lang::_('You must fill your function'));
	    }
		$this->function = $function;
	}
	public function setPublish($publish) {
		$this ->publish = $publish;
	}

    public function getForm($id = '', $name = '', $action = '', $method = 'POST', $class = 'form-horizontal', $errors = array(), $isPost = false) {

		$form = new Form($id, $name, $action, $method, $class, $isPost, 'Valider');

		$form->addField('company_name', Lang::_('Raison sociale'), 'text', $this->company_name, true, '', @$errors['company_name']);

		$form->addField('function', Lang::_('Fonction'), 'text', $this->function, true, '', @$errors['function']);

		return $form;
	}

	public function insert() {

	    return Db::insert(
	      'INSERT INTO profile_company SET user_id = :user_id, company_name = :company_name, function = :function, publish = :publish
	      ON DUPLICATE KEY UPDATE user_id = :user_id, company_name = :company_name, function = :function, publish = :publish',
	      array(
			'user_id' => $this->user_id,
	        'company_name' => $this->company_name,
	        'function' => $this->function,
	        'publish' => $this->publish
	      )
	    );
	}
}
