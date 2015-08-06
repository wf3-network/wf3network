<h2>Projet</h2>

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

{if !empty($projects)}
<div class="profile-projects">
    {foreach $projects as $proj}
    {include file="partials/profile-item-project.tpl"}
    <button class="btn profile-action" data-id="{$proj->id}" data-type="project" data-action="update" data-method="GET">Modifier</button>
    <button class="btn profile-action" data-id="{$proj->id}" data-type="project" data-action="delete" data-method="POST">X</button>
    {/foreach}
</div>
{/if}

<form class="form-horizontal" method="POST" novalidate>
    <!-- Select Basic -->
    <!--div class="form-group">
        <label class="col-md-4 control-label" for="project_name">Projet de fin de formation</label>
        <div class="col-md-4">
            <select id="project_name" name="project_name" class="form-control">
                <option value="">...</option>
                {foreach $projects as $project}
                <option value="{$project->project_name}">{$project->project_name}</option>
                {/foreach}
            </select>
        </div>
    </div-->

    <div class="form-group">
        <label class="col-md-4 control-label" for="project_name">Projet de fin de formation</label>
        <div class="col-md-4">
             <textarea class="form-control" id="project_name" name="project_name" placeholder="Nom du projet">{$project->project_name}</textarea>
        </div>
    </div>


    <div class="form-group">
        <label class="col-md-4 control-label" for="description">Description du poste</label>
        <div class="col-md-4">
            <textarea class="form-control" id="description" name="description" placeholder="Description du projet">{$project->description}</textarea>
        </div>
    </div>

    <!--button class="btn profile-action" data-type="project" data-action="create">Ajouter</button-->
    <button class="btn profile-action" {if !empty($experience->getId())}data-id="{$experience->getId()}"{/if} data-type="experience" data-action="{if !empty($experience->getId())}update{else}create{/if}">{if !empty($experience->getId())}Modifier{else}Ajouter{/if}</button>


</form>