{include file="partials/header.tpl"}

{include file="partials/cv-header.tpl"}


<h2>Profil</h2>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lastname">Nom</label>
  <div class="col-md-4">
  <input id="lastname" name="lastname" type="text" placeholder="Nom" class="form-control input-md" required="">

  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="firstname">Prénom</label>
  <div class="col-md-4">
  <input id="firstname" name="firstname" type="text" placeholder="Prénom" class="form-control input-md" required="">

  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="date_promo">Promotion</label>
  <div class="col-md-4">
    <select id="date_promo" name="date_promo" class="form-control">
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
  <input type="date" id="age" name="age" placeholder="jj/mm/aaaa" class="form-control input-md">

  </div>
</div>


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

<!-- File Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="photo">Photo</label>
  <div class="col-md-4">
    <input id="photo" name="photo" class="input-file" type="file">
  </div>
</div>



{include file="partials/cv-footer.tpl"}


{include file="partials/footer.tpl"}
