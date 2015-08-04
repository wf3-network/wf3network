<?php

class CvFormController extends BaseController {

  public function index() {

    	$isPost = $this->request->isPost();

    	if (!User::isLogged()) {
    		$this->response->redirect(ROOT_HTTP.'login');
    	}

    	$cvform = new Profile();
		$errors = array();
		if ($isPost) {

			foreach($cvform->getFields() as $key => $value) {
				try {
					$cvform->$key = $this->request->post($key, '');
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {

				if ($result = $cvform->insert()) {
					$vars['redirectJS'] = Utils::redirectJS(ROOT_HTTP, 3);
					$this->render('cv-form', $vars);
					return true;
				}
			}
		}

		$cvform->user_id = $this->session->user_id;
		
		echo '<pre>';    
		print_r($_POST);
		echo '</pre>';

		if($isPost){
   			echo $result = $cvform->insert();
   	 	}


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
