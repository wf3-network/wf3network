<?php

class CvFormController extends BaseController {

  public function index() {

    	$isPost = $this->request->isPost();
    	$cvform = new Cvform();
    
	if($isPost){
/*    	$result = $cvform->insert();
*/    }


/*	echo '<pre>';
	print_r($_POST);
    echo '<pre>';*/


    $this->render('cv-form'/*, $vars*/);

  }

  public function experience(){
  		$this->render('cv-experience');

  }

  public function formation(){
        $this->render('cv-formation');

  }

  public function skills(){
        $this->render('cv-skills');

  }

  public function project(){
  	   	$this->render('cv-project');

  }

}
