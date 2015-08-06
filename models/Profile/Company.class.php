<?php
class Profile_Company extends Model {

    protected $id;
    protected $company_name;
    protected $function;

    public function getId() {
    	return $this ->id = $id;
    }
	public function getCompanyName() {
		return $this ->company_name = $company_name;
	}
	public function getFunction() {
		return $this ->function = $function;
	}


	public function setId($id){
		$this->id = $id;
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



	public function insert() {

	    return Db::insert(
	      'INSERT INTO profile_company (company_name, function, register_date)
	                    VALUES (:company_name, :function, NOW())',
	      array(
	        'company_name' => $this->company_name,
	        'function' => $this->function,
	      )
	    );
	}
}
