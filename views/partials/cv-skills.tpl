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

<div class="profile-skills-container">
    bla
</div>

<form class="form-horizontal" method="POST">
    <div class="form-group">
        <label class="col-md-4 control-label" for="skill_wf3">Compétences WF3</label>
        <div class="col-md-4">
            <div class="panel panel-default embed-responsive-item">
                <div class="panel-body container">
                    <div class="dropdown">
                        <input type="checkbox" name="html5" value="1"> HTML 5 </input>
                        <select class="" name="nom" size="1">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="dropdown">
                        <input type="checkbox" name="css3" value="1"> CSS 3 </input>
                        <select name="nom" size="1">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="dropdown">
                        <input type="checkbox" name="php" value="1"> PHP </input>
                        <select name="nom" size="1">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="dropdown">
                        <input type="checkbox" name="mysql" value="1"> MySQL </input>
                        <select name="nom" size="1">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="dropdown">
                        <input type="checkbox" name="javascript" value="1"> Javascript </input>
                        <select name="nom" size="1">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="dropdown">
                        <input type="checkbox" name="cms" value="1"> CMS - Wordpress ...</input>
                        <select name="nom" size="1">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <button class="btn profile-action" data-type="skills" data-action="create">Ajouter</button>

    <!-- Button >
    <div class="form-group">
        <label class="col-md-4 control-label" for="submit"></label>
        <div class="col-md-4">
            <button id="submit" name="submit" class="btn btn-info">Envoyer</button>
        </div>
    </div-->

</form>
