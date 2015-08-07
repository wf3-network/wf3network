<?php
class Profile extends Model {

    /*profile*/
    protected $id;
    protected $user_id;
    protected $photo;
    protected $date_promo;
    protected $birth;
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
    public function getDatepromo() {
        return $this->date_promo;
    }
    public function getBirth() {
        return $this->birth;
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
    public function setDatepromo($date_promo) {
        if (empty($date_promo)) {
        throw new Exception(Lang::_('Vous devez renseigner une promo'));
        }
        $this->date_promo = $date_promo;
    }
    public function setBirth($birth) {
        $this->birth = $birth;
    }
    // public function setEmail($email) {
    //     if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
    //       throw new Exception(Lang::_('You must fill a valid email'));
    //     }
    //     $this->email = $email;
    // }
    public function setTelephone($telephone) {
        if (strlen($telephone) > 10) {
        throw new Exception(Lang::_('Votre numéro de téléphone est trop long'));
        }
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

    public function getFormations() {
        if (empty($this->id)) {
            return array();
        }
        return Profile_Formation::getList('SELECT * FROM profile_formation WHERE profile_id = :profile_id', array('profile_id' => $this->id));
    }

    public function getProjects() {
        if (empty($this->id)) {
            return array();
        }
        return Profile_Project::getList('SELECT * FROM profile_project WHERE profile_id = :profile_id', array('profile_id' => $this->id));
    }

    public function getSkills() {
        if (empty($this->id)) {
            return array();
        }
        return Profile_Skill::getList('SELECT ps.*, s.skill_name FROM profile_skill ps LEFT JOIN skill s ON s.id = ps.skill_id WHERE ps.profile_id = :profile_id', array('profile_id' => $this->id));
    }

    public function insert() {

        return Db::insert(
          'INSERT INTO profile SET user_id = :user_id, date_promo = :date_promo, birth = :birth, telephone = :telephone, site = :site, photo = :photo, publish = :publish, register_date = NOW()
          ON DUPLICATE KEY UPDATE user_id = :user_id, date_promo = :date_promo, birth = :birth, telephone = :telephone, site = :site, photo = :photo, publish = :publish, register_date = NOW()
          ',
          array(
            'user_id' => $this->user_id,
            'date_promo' => $this->date_promo,
            'birth' => $this->birth,
            'telephone' => $this->telephone,
            'site' => $this->site,
            'photo' => $this->photo,
            'publish' => (int) $this->publish
            )
          );
    }


    public function update() {

        return Db::update(
          'UPDATE profile SET user_id = :user_id, date_promo = :date_promo, birth = :birth, telephone = :telephone, site = :site, photo = :photo, publish = :publish WHERE id = :id',
          array(
            'user_id' => $this->user_id,
            'date_promo' => $this->date_promo,
            'birth' => $this->birth,
            'telephone' => $this->telephone,
            'site' => $this->site,
            'photo' => $this->photo,
            'publish' => (int) $this->publish,
            'id' => $this->id
            )
          );
    }


}
