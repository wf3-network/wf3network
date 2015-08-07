<h2>Projet</h2>

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

<div class="profile-project-container">
    bla
</div>

<form class="form-horizontal" method="POST" novalidate>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="project_name">Projet de fin de formation</label>
  <div class="col-md-4">
    <select id="project_name" name="project_name" class="form-control">
      <div class="checkbox">Projet 1</option>
      <option value="2">Projet 2</option>
      <option value="3">...</option>
    </select>
  </div>
</div>

    <button class="btn profile-action" data-type="project" data-action="create">Ajouter</button>

    <!-- Button >
    <div class="form-group">
        <label class="col-md-4 control-label" for="submit"></label>
        <div class="col-md-4">
            <button id="submit" name="submit" class="btn btn-info">Envoyer</button>
        </div>
    </div-->

</form>
