<?php
  class Profile extends Model {

    /*profile*/
    protected $id;
    protected $photo;
    protected $lastname;
    protected $firstname;
    protected $date_promo;
    protected $age;
    protected $mail;
    protected $telephone;
    protected $site;
    protected $exp_pro;
    protected $formation;
    protected $publish;
    protected $register_date;




/* Getters */
  public function getId() {
    return $this->id;
  }
  public function getPhoto() {
    return $this->photo;
  }
  public function getLastname() {
    return $this->lastname;
  }
  public function getFirstname() {
    return $this->firstname;
  }
  public function getDatepromo() {
    return $this->date_promo;
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
  public function getExppro() {
    return $this->exp_pro;
  }
  public function getFormation() {
    return $this->formation;
  }   
  public function getPublish() {
    return $this->publish;
  }
  public function getRegisterdate(){
    return $this->register_date;
  }




  /* Setters */
  public function setId($id) {
    $this->id = $id;
  }
  public function setPhoto($photo) {
    $this->photo = $photo;
  }
  public function setLastname($lastname) {
    $this->lastname = $lastname;
  }
  public function setFirstname($firstname) {
    $this->firstname = $firstname;
  }
  public function setDatepromo($date_promo) {
    $this->date_promo = $date_promo;
  }
  public function setAge($age) {
    $this->age = $age;
  }
  public function setMail($mail) {
    $this->mail = $mail;
  }
  public function setTelephone($telephone) {
    $this->telephone = $telephone;
  }
  public function setSite($site) {
    $this->site = $site;
  }
  public function setExppro($exp_pro) {
    $this->exp_pro = $exp_pro;
  }
  public function setFormation($formation) {
    $this->formation = $formation;
  }
  public function setPublish($publish) {
    $this->publish = $publish;
  }
  public function setRegisterdate($register_date) {
    $this->register_date = $register_date;
  }






  /*profile_formation*/
    protected $id_formation;
    protected $school_name;
    protected $city;
    protected $country;
    protected $name_formation;
    protected $date_formation;
    protected $description;
    protected $profile_id;

/* Getters */
  public function getIdformation() {
    return $this->id_formation;
  }
  public function getSchoolname() {
    return $this->school_name;
  }
  public function getCity() {
    return $this->city;
  }
  public function getCountry() {
    return $this->country;
  }
  public function getNameformation() {
    return $this->name_formation;
  }
  public function getDateformation() {
    return $this->date_formation;
  }   
  public function getDescription() {
    return $this->description;
  }
  public function getProfileid(){
    return $this->profile_id;
  }

  /* Setters */
  public function SetIdformation($id_formation) {
    $this->id_formation = $id_formation;
  }
  public function setSchoolname($school_name) {
    $this->school_name = $school_name;
  }
  public function setCity($city) {
    $this->city = $city;
  }
  public function setCountry($country) {
    $this->country = $country;
  }
  public function setNameformation($name_formation) {
    $this->name_formation = $name_formation;
  }
  public function setDateformation($date_formation) {
    $this->date_formation = $date_formation;
  }
  public function setDescription($description) {
    $this->description = $description;
  }
  public function setProfileid($profile_id) {
    $this->profile_id = $profile_id;
  }


  /*profile_expro*/
    protected $id_job;
    protected $job_name;
    protected $company_name;
    protected $date_job;
    protected $job_city;
    protected $job_country;
    protected $job_description;

/* Getters */
  public function getIdjob() {
    return $this->id_job;
  }
  public function getJobname() {
    return $this->job_name;
  }
  public function getCompanyname() {
    return $this->company_name;
  }
  public function getDatejob() {
    return $this->date_job;
  }
  public function getJobcity() {
    return $this->job_city;
  }
  public function getJobcountry() {
    return $this->job_country;
  }   
  public function getJobdescription() {
    return $this->job_description;
  }


  /* Setters */
  public function SetIdjob($id_job) {
    $this->id_job = $id_job;
  }
  public function setJobname($job_name) {
    $this->job_name = $job_name;
  }
  public function setCompanyname($company_name) {
    $this->company_name = $company_name;
  }
  public function setDatejob($date_job) {
    $this->date_job = $date_job;
  }
  public function setJobcity($job_city) {
    $this->job_city = $job_city;
  }
  public function setJobcountry($job_country) {
    $this->job_country = $job_country;
  }
  public function setJobdescription($job_description) {
    $this->job_description = $job_description;
  }

}
