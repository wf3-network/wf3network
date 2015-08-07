<?php
class Skill extends Model {

	/*Skill_name tab*/
	protected $id;
	protected $skill_name;
    protected $skill_wf3;

	 /* Getters skills*/
    public function getId() {
        return $this->id;
    }
    public function getSkillName() {
        return $this->skill_name;
    }
    public function getSkillWf3() {
        return $this->skill_wf3;
    }

    /* Setters skills */
    public function setId($id) {
        $this->id = $id;
    }
    public function setSkillName($skill_name) {
        $this->skill_name = $skill_name;
    }
    public function setSkillWf3($skill_wf3) {
        $this->skill_wf3 = $skill_wf3;
    }

    public static function isSkillExists($skill_name) {
        $skill = new Skill(Db::selectOne('SELECT * FROM skill WHERE skill_name = :skill_name', array('skill_name' => $skill_name)));
        if (!empty($skill->getId())) {
            return $skill->id;
        }
        return false;

    }

    public function insert() {

        return Db::insert(
            'INSERT INTO skill SET skill_name = :skill_name',
            array(
                'skill_name' => $this->skill_name
            )
        );
    }

}