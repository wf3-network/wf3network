<?php
class Profile_Skill extends Model {

	/*Skills*/
	protected $id;
	protected $profile_id;
	protected $skill_id;
	protected $skill_level;
    protected $skill_name;

	 /* Getters skills*/
    public function getId() {
        return $this->id;
    }
    public function getSkillId() {
        return $this->skill_id;
    }
    public function getSkillName($get_from_skill = true) {
        $skill = Skill::get($this->skill_id);
        if (empty($skill)) {
            return '';
        }
        return $skill->skill_name;
    }
    public function getSkillLevel() {
        return $this->skill_level;
    }
    public function getProfileid(){
        return $this->profile_id;
    }

    /* Setters skills */
    public function setId($id) {
        $this->id = $id;
    }
    public function setSkillId($skill_id) {
        $this->skill_id = $skill_id;
    }
    public function setSkillName($skill_name) {
        $this->skill_name = $skill_name;
    }
    public function setSkillLevel($skill_level) {
        $this->skill_level = $skill_level;
    }
    public function setProfileId($profile_id) {
        $this->profile_id = $profile_id;
    }

	public function insert() {

        return Db::insert(
            'INSERT INTO profile_skill (profile_id, skill_id, skill_level)
            VALUES (:profile_id, :skill_id, :skill_level)',
            array(
                'skill_id' => $this->skill_id,
                'skill_level' => $this->skill_level,
                'profile_id' => $this->profile_id,
            )
        );
    }

    public function update() {

        return Db::update(
             'UPDATE profile_skill SET profile_id = :profile_id, skill_id = :skill_id, skill_level = :skill_level WHERE id = :id',
            array(
                'skill_id' => $this->skill_id,
                'skill_level' => $this->skill_level,
                'profile_id' => $this->profile_id,
                'id' => $this->id
            )
        );
    }
    
    public function delete() {
        return Db::delete('DELETE FROM profile_skill WHERE id = :id', array('id' => $this->id));
    }


}