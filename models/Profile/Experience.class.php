<?php
class Profile_Experience extends Model {

	/*Experience*/
	protected $id;
	protected $job_name;
	protected $company_name;
	protected $date_job;
	protected $job_city;
	protected $job_country;
	protected $job_description;
	protected $profile_id;


	/* Getters */
	public function getId() {
		return $this->id;
	}
	public function getJobName() {
		return $this->job_name;
	}
	public function getCompanyName() {
		return $this->company_name;
	}
	public function getDateJob() {
		return $this->date_job;
	}
	public function getJobCity() {
		return $this->job_city;
	}
	public function getJobCountry() {
		return $this->job_country;
	}
	public function getJobDescription() {
        return $this->job_description;
    }
    public function getProfileId() {
        return $this->profile_id;
    }

    /* Setters */
    public function setId($id) {
    	$this->id = $id;
    }
    public function setJobName($job_name) {
    	if (empty($job_name)) {
    		throw new Exception(Lang::_('You must fill a job name'));
    	}
    	$this->job_name = $job_name;
    }
    public function setCompanyName($company_name) {
    	$this->company_name = $company_name;
    }
    public function setDateJob($date_job) {
    	$this->date_job = $date_job;
    }
    public function setJobCity($job_city) {
    	$this->job_city = $job_city;
    }
    public function setJobCountry($job_country) {
    	$this->job_country = $job_country;
    }
    public function setJobDescription($job_description) {
    	$this->job_description = $job_description;
    }
    public function setProfileId($profile_id) {
    	$this->profile_id = $profile_id;
    }



    public function insert() {

    	return Db::insert(
    		'INSERT INTO profile_experience (profile_id, job_name, company_name, date_job, job_city, job_country, job_description)
    		VALUES (:profile_id, :job_name, :company_name, :date_job, :job_city, :job_country, :job_description)',
    		array(
    			'profile_id' => $this->profile_id,
    			'job_name' => $this->job_name,
    			'company_name' => $this->company_name,
    			'date_job' => $this->date_job,
    			'job_city' => $this->job_city,
    			'job_country' => $this->job_country,
    			'job_description' => $this->job_description
    			)
    		);
    }

    public function update() {

        return Db::update(
            'UPDATE profile_experience SET profile_id = :profile_id, job_name = :job_name, company_name = :company_name, date_job = :date_job, job_city = :job_city, job_country = :job_country, job_description = :job_description WHERE id = :id',
            array(
                'profile_id' => $this->profile_id,
                'job_name' => $this->job_name,
                'company_name' => $this->company_name,
                'date_job' => $this->date_job,
                'job_city' => $this->job_city,
                'job_country' => $this->job_country,
                'job_description' => $this->job_description,
                'id' => $this->id
            )
        );
    }

    public function delete() {
        return Db::delete('DELETE FROM profile_experience WHERE id = :id', array('id' => $this->id));
    }

}
