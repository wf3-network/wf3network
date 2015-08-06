<h2>Compétences</h2>

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

{if !empty($skillss)}
<div class="profile-skillss">
    {foreach $skillss as $ski}
    {include file="partials/profile-item-skills.tpl"}
    <button class="btn profile-action" data-id="{$ski->id}" data-type="skills" data-action="update" data-method="GET">Modifier</button>
    <button class="btn profile-action" data-id="{$ski->id}" data-type="skills" data-action="delete" data-method="POST">X</button>
    {/foreach}
</div>
{/if}

<form class="form-horizontal" method="POST">
    <h4>Ain't working</h4>
    <div class="form-group">
        <label class="col-md-4 control-label" for="skill_wf3">Compétences WF3</label>
        <div class="col-md-4">
            <div class="panel panel-default embed-responsive-item">
                <div class="panel-body container">
                    <div class="dropdown">
                        {foreach $skill_names as $skill_name}
                        <input id="skill_name" type="checkbox" name="skill_name" value="{$skills->skill_name}"> {$skill_name['skill_name']}</input>
                        <select id="skill_level" name="skill_level" size="1">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                        <br>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>        
    </div>

    <h2>Test ajax</h2>
    <div class="form-group">
        <label class="col-md-4 control-label" for="skill_wf3">Compétences WF3</label>
        <div class="col-md-4">
            <input name="skill_name"  type="text"  placeholder="Ajouter une compétence wf3" class="form-control input-md tags" id="skill_name" value="{$skills->skill_name}">
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
    <!-- end test ajax -->

    <div class="form-group">
        <label class="col-md-4 control-label" for="skill_name">Compétences personnelles</label>
        <div class="col-md-4">
            <input id="skill_name" type="text" placeholder="Ajouter une compétence personnelle" name="skill_name" class="form-control input-md" value="{$skills->skill_name}"></input>
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

    <button class="btn profile-action" {if !empty($skills->getId())}data-id="{$skills->getId()}"{/if} data-type="skills" data-action="{if !empty($skills->getId())}update{else}create{/if}">{if !empty($skills->getId())}Modifier{else}Ajouter{/if}</button>

</form>
