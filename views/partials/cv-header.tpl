<div class="row">
    <div class="col-md-12">

        <!--form class="form-horizontal" method="POST">
            <fieldset-->

                <!-- Form Name -->
                <legend>Remplissez votre CV</legend>

<div id="tab" class="btn-group" data-toggle="buttons-radio">
    <a href="#profile" class="btn btn-large btn-info" data-toggle="tab">Profil</a>
    <a href="#experience" class="btn btn-large btn-info" data-toggle="tab">Experience Professionnelle</a>
    <a href="#formation" class="btn btn-large btn-info" data-toggle="tab">Formation</a>
    <a href="#skills" class="btn btn-large btn-info"  data-toggle="tab">Compétences</a>
    <a href="#project" class="btn btn-large btn-info"  data-toggle="tab">Projet</a>
    <a href="#" class="btn btn-large btn-warning"  data-toggle="tab" disabled>Visualiser profil</a>
    <a href="#end" class="btn btn-large btn-success"  data-toggle="tab">Terminer</a>
</div>

<div class="tab-content">
    <div class="tab-pane active" id="profile">
        {include file="partials/cv-profile.tpl"}
    </div>
    <div class="tab-pane" id="experience">
        {include file="partials/cv-experience.tpl"}
    </div>
    <div class="tab-pane" id="formation">
        {include file="partials/cv-formation.tpl"}
    </div>
    <div class="tab-pane" id="skills">
        {include file="partials/cv-skills.tpl"}
    </div>
    <div class="tab-pane" id="project">
        {include file="partials/cv-project.tpl"}
    </div>
    <div class="tab-pane" id="end">
        {include file="partials/cv-end.tpl"}
    </div>
</div>

