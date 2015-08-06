{if !empty($errors)}
<div class="alert alert-danger" role="danger">
    {foreach $errors as $error}
    {$error}<br>
    {/foreach}
</div>
{/if}

{if !empty($isPost) && !empty($success)}
<div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
{Utils::redirectJS("{$HTTP_ROOT}profile/company", 1)}
{/if}

{$profile_company}

<form class="form-horizontal" method="POST" novalidate>
<fieldset>

<!-- Form Name -->
<legend>Entreprise</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="company_name">Entreprise</label>
  <div class="col-md-5">
  <input id="company_name" name="company_name" type="text" placeholder="Raison sociale" class="form-control input-md" value="{$profile_company->company_name}">

  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="function">Fonction</label>
  <div class="col-md-4">
  <input id="function" name="function" type="text" placeholder="Fonction" class="form-control input-md" value="{$profile_company->function}">

  </div>
</div>

<!--
<div class="form-group">
  <label class="col-md-4 control-label" for="firstname">Prénom</label>
  <div class="col-md-4">
  <input id="firstname" name="firstname" type="text" placeholder="Prénom" class="form-control input-md">

  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="lastname">Nom</label>
  <div class="col-md-4">
  <input id="lastname" name="lastname" type="text" placeholder="Nom" class="form-control input-md" required="">

  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="email">E-Mail</label>
  <div class="col-md-4">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="nom" aria-describedby="nom_email">
    </div>
  </div>
</div>
-->

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-info">Valider</button>
  </div>
</div>

</fieldset>
</form>