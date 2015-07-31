<?php

class ProfileController extends BaseController {

	public function index() {

		// $page = (int) $this->getParam(0, 1);

		// $pagination = new Pagination('SELECT * FROM posts ORDER BY date DESC', array(), 4, $page - 1);

		$vars = array(
			// 'title' => 'Blog',
			// 'description' => 'Description',
			// 'page' => $page
		);

		// if(!(User::isLogged)){
		// 	$this->render('profile-simple.tpl', $vars);
		// }else{
		// 	$this->render('profile-full.tpl', $vars);
		// }
		$this->render('profile-full.tpl', $vars);
	}

}