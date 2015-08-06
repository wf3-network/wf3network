<?php
class Profile_Skills extends Model {

	/*Skills*/
	protected $id;
	protected $profile_id;
	protected $skill_id;
	protected $skill_level;
	protected $skill_wf3;
	protected $skill_name;

	 /* Getters skills*/
    public function getId() {
        return $this->id;
    }
    public function getSkillId() {
        return $this->skill_id;
    }
    public function getSkillLevel() {
        return $this->skill_level;
    }
    public function getSkillWf3() {
        return $this->skill_wf3;
    }
    public function getProfileid(){
        return $this->profile_id;
    }
    public function getSkillName(){
        return $this->skill_name;
    }

    /* Setters skills */
    public function SetId($id) {
        $this->id = $id;
    }
    public function setSkillId($skill_id) {
        $this->skill_id = $skill_id;
    }
    public function setSkillLevel($skill_level) {
        $this->skill_level = $skill_level;
    }
    public function setSkillWf3($skill_wf3) {
        $this->skill_wf3 = $skill_wf3;
    }
    public function setProfileId($profile_id) {
        $this->profile_id = $profile_id;
    }
    public function setSkillName($skill_name) {
        $this->skill_name = $skill_name;
    }

	public function insert() {

        return Db::insert(
            'INSERT INTO profile_skills (profile_id, skill_id, skill_level, skill_wf3, skill_name)
            VALUES (:profile_id, :skill_id, :skill_level, :skill_wf3, :skill_name)',
            array(
                'skill_id' => $this->skill_id,
                'skill_level' => $this->skill_level,
                'skill_wf3' => $this->skill_wf3,
                'profile_id' => $this->profile_id,
                'skill_name' => $this->skill_name
            )
        );
    }

    public function update() {

        return Db::update(
             'UPDATE profile_skills SET profile_id = :profile_id, skill_id = :skill_id, skill_level = :skill_level, skill_wf3 = :skill_wf3, skill_name = :skill_name WHERE id = :id',
            array(
                'skill_id' => $this->skill_id,
                'skill_level' => $this->skill_level,
                'skill_wf3' => $this->skill_wf3,
                'profile_id' => $this->profile_id,
                'skill_name' => $this->skill_name
            )
        );
    }
    public function delete() {
        return Db::delete('DELETE FROM profile_skills WHERE id = :id', array('id' => $this->id));
    }


}