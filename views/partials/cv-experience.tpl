<h2>Experience professionnelle</h2>
{if !empty($errors)}
<div class="alert alert-danger" role="danger">
    {foreach $errors as $error}
        {$error}<br>
    {/foreach}
</div>
{/if}

{if !empty($isPost) && !empty($success)}
<div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
{Utils::redirectJS("{$HTTP_ROOT}cvform", 1)}
{/if}

{if isset($form) && empty($success)}
{$form}
{/if}

{if !empty($experiences)}
<div class="profile-experiences">
    {foreach $experiences as $exp}
        {include file="partials/profile-item-experience.tpl"}
    {/foreach}
</div>
{/if}



<form class="form-horizontal" method="POST">


    <!-- Textarea -->
    <div class="form-group{if !empty($isPost)}{if !empty($errors['job_name'])} has-error{else} has-success{/if}{/if}">
          <label class="col-md-4 control-label" for="job_name">Intitulé du poste</label>
          <div class="col-md-4">
            <textarea class="form-control" id="job_name" name="job_name" placeholder="Intitulé du poste">{$experience->job_name}</textarea>
        </div>

    </div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="company_name">Nom de l'entreprise</label>
  <div class="col-md-4">
    <textarea class="form-control" id="company_name" name="company_name" placeholder="Nom de l'entreprise"></textarea>
</div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="date_job">Dates</label>
  <div class="col-md-4">
    <textarea class="form-control" id="date_job" name="date_job" placeholder="Dates"></textarea>
</div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="job_city">Ville</label>
  <div class="col-md-4">
    <textarea class="form-control" id="job_city" name="job_city" placeholder="Ville"></textarea>
</div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="job_country">Pays</label>
  <div class="col-md-4">
    <textarea class="form-control" id="job_country" name="job_country" placeholder="Pays"></textarea>
</div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="job_description">Description du poste</label>
  <div class="col-md-4">
    <textarea class="form-control" id="job_description" name="job_description" placeholder="Description du poste"></textarea>
</div>
</div>

<button class="btn profile-action" data-type="experience" data-action="create">Ajouter</button>

<!-- Button>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-info">Envoyer</button>
  </div>
</div-->

</form>




