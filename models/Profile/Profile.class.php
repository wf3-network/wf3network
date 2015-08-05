<?php
class Profile extends Model {

    /*profile*/
    protected $id;
    protected $user_id;
    protected $photo;
    protected $lastname;
    protected $firstname;
    protected $date_promo;
    protected $birth;
    protected $email;
    protected $telephone;
    protected $site;
    protected $publish;
    protected $register_date;


    /* Getters */
    public function getId() {
        return $this->id;
    }
    public function getUserId() {
        return $this->user_id;
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
    public function getBirth() {
        return $this->birth;
    }
    public function getEmail() {
        return $this->email;
    }
    public function getTelephone() {
        return $this->telephone;
    }
    public function getSite() {
        return $this->site;
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
    public function setUserId($user_id) {
        $this->user_id = $user_id;
    }
    public function setPhoto($photo) {
        $this->photo = $photo;
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
    public function setDatepromo($date_promo) {
        $this->date_promo = $date_promo;
    }
    public function setBirth($birth) {
        $this->birth = $birth;
    }
    public function setEmail($email) {
        if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
          throw new Exception(Lang::_('You must fill a valid email'));
        }
        $this->email = $email;
    }
    public function setTelephone($telephone) {
        $this->telephone = $telephone;
    }
    public function setSite($site) {
        $this->site = $site;
    }
    public function setPublish($publish) {
        $this->publish = $publish;
    }
    public function setRegisterdate($register_date) {
        $this->register_date = $register_date;
    }



    public function getExperiences() {
        if (empty($this->id)) {
            return array();
        }
        return Profile_Experience::getList('SELECT * FROM profile_experience WHERE profile_id = :profile_id', array('profile_id' => $this->id));
    }


    public function insert() {

        return Db::insert(
          'INSERT INTO profile (user_id, lastname, firstname, date_promo, birth, email, telephone, site, photo, publish, register_date)
          VALUES (:user_id, :lastname, :firstname, :date_promo, :birth, :email, :telephone, :site, :photo, :publish, NOW())',
          array(
            'user_id' => $this->user_id,
            'lastname' => $this->lastname,
            'firstname' => $this->firstname,
            'date_promo' => $this->date_promo,
            'birth' => $this->birth,
            'email' => $this->email,
            'telephone' => $this->telephone,
            'site' => $this->site,
            'photo' => $this->photo,
            'publish' => (int) $this->publish
            )
          );
    }



}
