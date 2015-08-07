<h2>Compétences</h2>

{if !empty($errors)}
{$errors|print_r}
<div class="alert alert-danger" role="danger">{$title} {t}failed{/t}</div>
{/if}

{if !empty($isPost) && !empty($success)}
<div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
{Utils::redirectJS("{$HTTP_ROOT}cvform", 1)}
{/if}

{if isset($form) && empty($success)}
{$form}
{/if}

{if !empty($skills)}
<div class="profile-skills">
    {foreach $skills as $ski}
    {include file="partials/profile-item-skills.tpl"}
    <button class="btn profile-action" data-id="{$ski->id}" data-type="skill" data-action="update" data-method="GET">Modifier</button>
    <button class="btn profile-action" data-id="{$ski->id}" data-type="skill" data-action="delete" data-method="POST">X</button>
    {/foreach}
</div>
{/if}

<form class="form-horizontal" method="POST">

    <h2>Test ajax</h2>
    <div class="form-group">
        <label class="col-md-4 control-label" for="skill_name">Compétences</label>
        <div class="col-md-4">
            <input name="skill_id"  type="hidden" id="skill_id" value="{$skill->id}">
            <input name="skill_name"  type="text"  placeholder="Ajouter une compétence" class="form-control input-md tags" id="skill_name" value="{$skill->skill_name}">
            <label>Note</label>
            <select id="skill_level" name="skill_level" size="1">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>        
    </div>
    {$skill->skill_name}
    <button class="btn profile-action" {if !empty($skill->getId())}data-id="{$skill->getId()}"{/if} data-type="skill" data-action="{if !empty($skill->getId())}update{else}create{/if}">{if !empty($skill->getId())}Modifier{else}Ajouter{/if}</button>

</form>
