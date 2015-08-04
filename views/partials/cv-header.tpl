<div class="row">
<div class="col-md-12">

<form class="form-horizontal" method="POST">
<fieldset>

<!-- Form Name -->
<legend>Remplissez votre CV</legend>

<!--
<button class="btn btn-info"><a href="{$HTTP_ROOT}cvform">Profil</a></button>
<button class="btn btn-info"><a href="{$HTTP_ROOT}cvform/experience">Experience Professionnelle</a></button>
<button class="btn btn-info"><a href="{$HTTP_ROOT}cvform/formation">Formation</a></button>
<button class="btn btn-info"><a href="{$HTTP_ROOT}cvform/skills">Compétences</a></button>
<button class="btn btn-info"><a href="{$HTTP_ROOT}cvform/project">Projet</a></button>
-->

<div id="tab" class="btn-group" data-toggle="buttons-radio">
  <a href="#profil" class="btn btn-large btn-info active" data-toggle="tab">Profil</a>
  <a href="#experience" class="btn btn-large btn-info" data-toggle="tab">Experience Professionnelle</a>
  <a href="#formation" class="btn btn-large btn-info" data-toggle="tab">Formation</a>
  <a href="#compétences" class="btn btn-large btn-info"  data-toggle="tab">Compétences</a>
  <a href="#projet" class="btn btn-large btn-info"  data-toggle="tab">Projet</a>
</div>

<div class="tab-content">
  <div class="tab-pane active" id="profil">
  	{include file="partials/cv-profile.tpl"}
  </div>
  <div class="tab-pane" id="experience">
  	{include file="partials/cv-experience.tpl"}
  </div>
  <div class="tab-pane" id="formation">

  </div>
  <div class="tab-pane" id="contact2">

  </div>
</div>

