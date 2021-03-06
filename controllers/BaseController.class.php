<?php
abstract class BaseController extends Controller {

  public function __construct() {

    parent::__construct();

    $vars = array(
      'HTTP_ROOT' => ROOT_HTTP.$this->lang->getUserLang().'/',
      'CSS_ROOT' => CSS_HTTP,
      'JS_ROOT' => JS_HTTP,
      'IMG_ROOT' => IMG_HTTP,
      'referer' => REFERER,
      'uri' => $this->getUri(),
      'querystring' => $this->getQueryString(),
      'current_page' => $this->route,
      'target' => $this->target,
      'action' => $this->action,
      'lang' => $this->lang->getUserLang(),
      'website_title' => 'Website Title',
      'website_description' => 'Website Description',
      'author' => 'Website Author',
      'title' => 'WF3 | Network',
      'description' => '',
      // Vérifie si la page est appelée en Ajax --> utilisé surtout pour la page login pour afficher la fenêtre modale ou pas
      'isAjax' => $this->request->isAjax(),
      'user' => new User()
    );

    $vars['pages'] = array(
      array('url' => 'home', 'name' => Lang::_('Accueil')),
      array('url' => 'News', 'name' => Lang::_('News')),
      array('url' => 'directory', 'name' => Lang::_('Annuaire')),
      array('url' => 'Emploi', 'name' => Lang::_('Emploi')),
      array('url' => 'Contact', 'name' => Lang::_('Contact')),
    );

    $fb_active = API_Facebook::isActive();
    if ($fb_active) {
      $vars['fb_login_url'] = API_Facebook::getLoginUrl(ROOT_HTTP.'register');
    }

    if (User::isLogged()) {
      $vars['user'] = User::get($this->session->user_id);
    }

    $archives_dates = array();
    for($i = 0; $i < 12; $i++) {
      $time = strtotime('-'.$i.' month');
      $month_value = date('Y-m', $time);
      $month_label = ucfirst(Lang::_(strtolower(date('F', $time))));
      $year = date('Y', $time);
      $archives_dates[$month_value] = $month_label.' '.$year;
    }

    $vars['archives_dates'] = $archives_dates;

    $this->response->addVars($vars);
  }

}
