<?php

class PageController extends BaseController {

  public function cgu() {

    $this->render('cgu');

  }

  public function mentionslegales() {

    $this->render('mentionslegales');

  }

  public function charte() {

    $this->render('charte');

  }

  public function companysuccess(){

  	$this->render('companysuccess');
  }
}
