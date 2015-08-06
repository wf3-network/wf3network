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
    {foreach $projects as $project}
    {include file="partials/profile-item-project.tpl"}
    <button class="btn profile-action" data-id="{$project->id}" data-type="project" data-action="update" data-method="GET">Modifier</button>
    <button class="btn profile-action" data-id="{$project->id}" data-type="project" data-action="delete" data-method="POST">X</button>
    {/foreach}
</div>
{/if}

<form class="form-horizontal" method="POST" novalidate>
<!-- Select Basic -->
<div class="form-group">
    <label class="col-md-4 control-label" for="project_name">Projet de fin de formation</label>
    <div class="col-md-4">
        <select id="project_name" name="project_name" class="form-control">
            <option value="1">Projet 1</option>
            <option value="2">Projet 2</option>
            <option value="3">Projet 3</option>
            <option value="4">Projet 4</option>
        </select>
    </div>
</div>

<button class="btn profile-action" {if !empty($project->getId())}data-id="{$project->getId()}"{/if} data-type="project" data-action="{if !empty($project->getId())}update{else}create{/if}">{if !empty($project->getId())}Modifier{else}Ajouter{/if}</button>

</form>