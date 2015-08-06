<?php
class Profile_Project extends Model {

	/*Project*/
	protected $id;
	protected $project_name;
	protected $description;
	protected $url;
	protected $profile_id;

	/* Getters */
    public function getId() {
        return $this->id;
    }
    public function getProjectName() {
        return $this->project_name;
    }
    public function getDescription() {
        return $this->description;
    }
    public function getUrl() {
        return $this->url;
    }
    public function getProfileId() {
        return $this->profile_id;
    }

    /* Setters */
    public function setId($id) {
        $this->id = $id;
    }
    public function setProjectName(($project_name) {
        $this->project_name = $project_name;
    }
    public function setDescription(($description) {
        $this->description = $description;
    }
    public function setUrl(($url) {
        $this->url = $url;
    }
    public function setProfileId(($profile_id) {
        $this->profile_id = $profile_id;
    }

    public function insert() {

    	return Db::insert(
    		'INSERT INTO profile_project (profile_id, project_name, description, url)
    		VALUES (:profile_id, :project_name, :description, :url)',
    		array(
    			'profile_id' => $this->profile_id,
    			'job_name' => $this->project_name,
    			'company_name' => $this->description,
    			'date_job' => $this->url
    			)
    		);
    }

    public function update() {

        return Db::update(
            'UPDATE profile_project SET profile_id = :profile_id, project_name = :project_name, description = :description, url = :url WHERE id = :id',
            array(
    			'profile_id' => $this->profile_id,
    			'job_name' => $this->project_name,
    			'company_name' => $this->description,
    			'date_job' => $this->url
                'id' => $this->id
            )
        );
    }

    public function delete() {
        return Db::delete('DELETE FROM profile_project WHERE id = :id', array('id' => $this->id));
    }
}