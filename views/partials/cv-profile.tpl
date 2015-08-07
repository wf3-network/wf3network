<h2>Profil</h2>

{if !empty($errors)}
<div class="alert alert-danger" role="danger">{if !empty($errors['authent'])}{$errors['authent']}{else}{$title} {t}failed{/t}{/if}</div>
{/if}

{if !empty($isPost) && !empty($success)}
<div class="alert alert-success" role="success">{$title} {t}: succès{/t}</div>
{Utils::redirectJS("{$HTTP_ROOT}cvform", 1)}
{/if}

{if isset($form) && empty($success)}
{$form}
{/if}


Nom: {$user->lastname}<br>
Prénom: {$user->firstname}<br>
Email: {$user->email}<br>

<form class="form-horizontal" method="POST" novalidate>
  <fieldset>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="date_promo">Promotion</label>
  <div class="col-md-4">
    <select id="date_promo" name="date_promo" class="form-control">
      <option value="1">...</option>
      <option value="2">Lieu1-Mois-Année</option>
      <option value="3">Lieu2-Mois-Année</option>
      <option value="4">Lieu3-Mois-Année</option>
  </select>
</div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="birth">Date de naissance</label>
  <div class="col-md-4">
      <input type="date" id="birth" name="birth" placeholder="jj/mm/aaaa" class="form-control input-md" value="{$profile->birth}">

  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="telephone">Téléphone (+33)</label>
  <div class="col-md-4">
      <input id="telephone" name="telephone" type="text" placeholder="fixe ou mobile" class="form-control input-md" value="{$profile->telephone}">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="site">Site perso</label>
  <div class="col-md-4">
      <input id="site" name="site" type="text" placeholder="http://..." class="form-control input-md" value="{$profile->site}">

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
    <button id="submit" name="submit" class="btn btn-info">Envoyer</button>

</div>
</div>

</fieldset>
</form>
