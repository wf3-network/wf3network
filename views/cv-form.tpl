{include file="partials/header.tpl"}

<div class="row">
<div class="col-md-12">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Remplissez votre CV</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="firstname">Prénom</label>
  <div class="col-md-4">
  <input id="firstname" name="firstname" type="text" placeholder="Prénom" class="form-control input-md" required="">

  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lastname">Nom</label>
  <div class="col-md-4">
  <input id="lastname" name="lastname" type="text" placeholder="NOM" class="form-control input-md" required="">

  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="date_promo">Promotion</label>
  <div class="col-md-4">
    <select id="promo" name="promo" class="form-control">
      <option value="1">Lieu-Mois-Année</option>
      <option value="2">Lieu-Mois-Année</option>
      <option value="3">Lieu-Mois-Année</option>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="age">Date de naissance</label>
  <div class="col-md-4">
  <input id="age" name="age" type="date" placeholder="jj/mm/aaaa" class="form-control input-md">

  </div>
</div>

<!-- Text input-->
<!--div class="form-group">
  <label class="col-md-4 control-label" for="mail">E-Mail</label>
  <div class="col-md-4">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="nom" aria-describedby="nom_mail">
    <span class="input-group-addon" id="basic-addon1">@</span>
    <input type="text" class="form-control" placeholder="domaine" aria-describedby="domaine_mail">
    </div>
  </div>
</div-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mail">E-Mail</label>
  <div class="col-md-4">
      <input id="mail" name="mail" type="text" placeholder="mail" class="form-control input-md">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="telephone">Téléphone</label>
  <div class="col-md-4">
  <input id="telephone" name="telephone" type="text" placeholder="fixe ou mobile" class="form-control input-md">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="site">Site perso</label>
  <div class="col-md-4">
  <input id="site" name="site" type="text" placeholder="http://..." class="form-control input-md">

  </div>
</div>

<!-- Select Multiple -->
<div class="form-group">
  <label class="col-md-4 control-label" for="skill_wf3">Compétences WF3</label>
  <div class="col-md-4">
    <select id="skill_wf3" name="skill_wf3" class="form-control" multiple="multiple">
      <option value="html5">HTML 5</option>
      <option value="css3">CSS 3</option>
      <option value="php">PHP</option>
      <option value="mysql">MySQL</option>
      <option value="javascript">Javascript</option>
      <option value="cms">CMS - Wordpress ...</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="project_name">Projet de fin de formation</label>
  <div class="col-md-4">
    <select id="project_name" name="project_name" class="form-control">
      <option value="1">Projet 1</option>
      <option value="2">Projet 2</option>
      <option value="3">...</option>
    </select>
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="exp_pro">Expériences professionelles</label>
  <div class="col-md-4">
    <textarea class="form-control" id="exp_pro" name="exp_pro">default text</textarea>
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="formation">Formation</label>
  <div class="col-md-4">
    <textarea class="form-control" id="formation" name="formation">default text</textarea>
  </div>
</div>

<!-- File Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="photo">Photo</label>
  <div class="col-md-4">
    <input id="photo" name="photo" class="input-file" type="file">
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-info">Envoyer !</button>
  </div>
</div>

</fieldset>
</form>
</div>
</div>

{include file="partials/footer.tpl"}
