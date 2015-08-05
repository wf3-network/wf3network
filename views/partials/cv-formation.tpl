<h2>Formation</h2>
<form class="form-horizontal" method="POST">
    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="school_name">Nom de l'école</label>
        <div class="col-md-4">
            <textarea class="form-control" id="school_name" name="school_name" placeholder="Nom de l'école"></textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="name_formation">Intitulé de la formation</label>
        <div class="col-md-4">
            <textarea class="form-control" id="name_formation" name="name_formation" placeholder="Intitulé de la formation"></textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="date_formation">Dates</label>
        <div class="col-md-4">
            <textarea class="form-control" id="date_formation" name="date_formation" placeholder="Dates"></textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="city">Ville</label>
        <div class="col-md-4">
            <textarea class="form-control" id="city" name="city" placeholder="Ville"></textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="country">Pays</label>
        <div class="col-md-4">
            <textarea class="form-control" id="country" name="country" placeholder="Pays"></textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="description">Description de la formation</label>
        <div class="col-md-4">
            <textarea class="form-control" id="description" name="description" placeholder="Description de la formation"></textarea>
        </div>
    </div>

<button class="btn profile-action" data-type="formation" data-action="create">Ajouter</button>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-info">Envoyer</button>
</div>
</div>

{if !empty($errors)}
<div class="alert alert-danger" role="danger">{if !empty($errors['authent'])}{$errors['authent']}{else}{$title} {t}failed{/t}{/if}</div>
{/if}

{if !empty($isPost) && !empty($success)}
<div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
{Utils::redirectJS("{$HTTP_ROOT}cvform", 1)}
{/if}

{if isset($form) && empty($success)}
{$form}
{/if}

</form>
