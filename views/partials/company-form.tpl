{if !empty($errors)}
  <div class="alert alert-danger" role="danger">
      {foreach $errors as $error}
      {$error}<br>
      {/foreach}
  </div>
{/if}

{if !empty($isPost) && !empty($success)}
  <div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
  {Utils::redirectJS("{$HTTP_ROOT}companysuccess", 1)}
{/if}

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

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="companyRegisterSucces" class="btn btn-info" value="companyRegisterSucces">Valider</button>
  </div>

</div>

</fieldset>
</form>