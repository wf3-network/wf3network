<?php
class Profile_Formation extends Model {

    /*profile_formation*/
    protected $id;
    protected $school_name;
    protected $city_formation;
    protected $country_formation;
    protected $name_formation;
    protected $date_formation;
    protected $description_formation;
    protected $profile_id;

    /* Getters formation*/
    public function getId() {
        return $this->id;
    }
    public function getSchoolName() {
        return $this->school_name;
    }
    public function getCityFormation() {
        return $this->city_formation;
    }
    public function getCountryFormation() {
        return $this->country_formation;
    }
    public function getNameFormation() {
        return $this->name_formation;
    }
    public function getDateFormation() {
        return $this->date_formation;
    }   
    public function getDescriptionFormation() {
        return $this->description_formation;
    }
    public function getProfileid(){
        return $this->profile_id;
    }


    /* Setters formation */
    public function SetId($id) {
        $this->id = $id;
    }
    public function setSchoolname($school_name) {
        $this->school_name = $school_name;
    }
    public function setCityFormation($city_formation) {
        $this->city_formation = $city_formation;
    }
    public function setCountryFormation($country_formation) {
        $this->country_formation = $country_formation;
    }
    public function setNameFormation($name_formation) {
        $this->name_formation = $name_formation;
    }
    public function setDateFormation($date_formation) {
        $this->date_formation = $date_formation;
    }
    public function setDescriptionFormation($description_formation) {
        $this->description_formation = $description_formation;
    }
    public function setProfileId($profile_id) {
        $this->profile_id = $profile_id;
    }

    public function insert() {

        return Db::insert(
            'INSERT INTO profile_formation (profile_id, school_name, city_formation, country_formation, name_formation, date_formation, description_formation)
            VALUES (:profile_id, :school_name, :city_formation, :country_formation, :name_formation, :date_formation, :description_formation)',
            array(
                'school_name' => $this->school_name,
                'city_formation' => $this->city_formation,
                'country_formation' => $this->country_formation,
                'name_formation' => $this->name_formation,
                'date_formation' => $this->date_formation,
                'description_formation' => $this->description_formation,
                'profile_id' => $this->profile_id
            )
        );
    }


    public function update() {

        return Db::update(
             'UPDATE profile_formation SET profile_id = :profile_id, school_name = :school_name, city_formation = :city_formation, country_formation = :country_formation, name_formation = :name_formation, date_formation = :date_formation, description_formation = :description_formation WHERE id = :id',
            array(
                'profile_id' => $this->profile_id,
                'school_name' => $this->school_name,
                'city_formation' => $this->city_formation,
                'country_formation' => $this->country_formation,
                'name_formation' => $this->name_formation,
                'date_formation' => $this->date_formation,
                'description_formation' => $this->description_formation,
                'id' => $this->id
            )
        );
    }
    public function delete() {
        return Db::delete('DELETE FROM profile_formation WHERE id = :id', array('id' => $this->id));
    }

}
