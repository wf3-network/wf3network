<h2>Formation</h2>
{if !empty($errors)}
<div class="alert alert-danger" role="danger">
    {foreach $errors as $error}
    {$error}<br>
    {/foreach}
</div>
{/if}

{if !empty($isPost) && !empty($success)}
<div class="alert alert-success" role="success">{$title} {t}: succès{/t}</div>
{Utils::redirectJS("{$HTTP_ROOT}cvform", 1)}
{/if}

{if isset($form) && empty($success)}
{$form}
{/if}

{if !empty($formations)}
<div class="profile-formations">
    {foreach $formations as $form}
    {include file="partials/profile-item-formation.tpl"}
    <button class="btn profile-action" data-id="{$form->id}" data-type="formation" data-action="update">Modifier</button>
    <button class="btn profile-action" data-id="{$form->id}" data-type="formation" data-action="delete" data-method="POST">X</button>

    {/foreach}
</div>
{/if}

<form class="form-horizontal" method="POST" novalidate>
    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="school_name">Nom de l'école</label>
        <div class="col-md-4">
            <textarea class="form-control" id="school_name" name="school_name" placeholder="Nom de l'école">{$formation->school_name}</textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="name_formation">Intitulé de la formation</label>
        <div class="col-md-4">
            <textarea class="form-control" id="name_formation" name="name_formation" placeholder="Intitulé de la formation">{$formation->name_formation}</textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="date_formation">Dates</label>
        <div class="col-md-4">
            <input type="date" id="date_formation" name="date_formation" placeholder="jj/mm/aaaa" class="form-control input-md" value="{$formation->date_formation}">
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="city_formation">Ville</label>
        <div class="col-md-4">
            <textarea class="form-control" id="city_formation" name="city_formation" placeholder="Ville">{$formation->city_formation}</textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="country_formation">Pays</label>
        <div class="col-md-4">
            <textarea class="form-control" id="country_formation" name="country_formation" placeholder="Pays">{$formation->country_formation}</textarea>
        </div>
    </div>

    <!-- Textarea -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="description_formation">Description de la formation</label>
        <div class="col-md-4">
            <textarea class="form-control" id="description_formation" name="description_formation" placeholder="Description de la formation">{$formation->description_formation}</textarea>
        </div>
    </div>

<button class="btn profile-action" {if !empty($formation->getId())}data-id="{$formation->getId()}"{/if} data-type="formation" data-action="{if !empty($formation->getId())}update{else}create{/if}">{if !empty($formation->getId())}Modifier{else}Ajouter{/if}</button>

<!-- Button >
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-info">Envoyer</button>
</div>
</div-->

</form>
