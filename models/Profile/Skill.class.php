<?php
class Skill extends Model {

	/*Skill_name tab*/
	protected $id;
	protected $skill_name;

	 /* Getters skills*/
    public function getId() {
        return $this->id;
    }
    public function getSkillName() {
        return $this->skill_name;
    }

    /* Setters skills */
    public function SetId($id) {
        $this->id = $id;
    }
    public function SetSkillName($skill_name) {
        $this->skill_name = $skill_name;
    }

    public function getSkillId() {

		return new Profile_Skills(Db::selectOne('SELECT * FROM project_skills WHERE skill_id = :skill_id', array('skill_id' => $this->id)));
	}

