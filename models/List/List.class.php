<?php
  class List extends Model {

    protected $id;
    protected $photo;
    protected $name;
    protected $firstname;
    protected $date_promo;
    protected $age;
    protected $mail;
    protected $telephone;
    protected $site;
    protected $publish;


/* Getters */
  public function getId() {
    return $this->id;
  }
  public function getPhoto() {
    return $this->photo;
  }
  public function getName() {
    return $this->name;
  }
  public function getFirstname() {
    return $this->firstname;
  }
  public function getDate_promo() {
    return $this->date_promo;
  }
  public function getAge() {
    return $this->age;
  }
  public function getMail() {
    return $this->mail;
  }
  public function getTelephone() {
    return $this->telephone;
  }
  public function getSite() {
    return $this->site;
  }
  public function getPublish() {
    return $this->publish;
  }



  /* Setters */
  public function setId($id) {
    $this->id = $id;
  }
  public function setPhoto($photo) {
    $this->photo = $photo;
  }
  public function setName($name) {
    $this->name = $name;
  }
  public function setFirstname($firstname) {
    $this->firstname = $firstname;
  }
  public function setDate_promo($date_promo) {
    $this->date_promo = $date_promo;
  }
  public function setAge($age) {
    $this->age = $age;
  }
  public function setMail($mail) {
    $this->mail = $mail;
  }
  public function setTelephone($telephone) {
    $this->telephone = $telephone;
  }
  public function setSite($site) {
    $this->site = $site;
  }
  public function setPublish($publish) {
    $this->publish = $publish;
  }

}
