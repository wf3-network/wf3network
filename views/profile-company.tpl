{include file="partials/header.tpl"}

<div class="row">
    <div class="col-md-12">
        <form class="form-horizontal" method="POST">
            <fieldset>
            <!-- Form Name -->
                <legend>Entreprise</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="companyname">Entreprise</label>
                    <div class="col-md-5">
                    <input id="companyname" name="company_name" type="text" placeholder="Raison sociale" class="form-control input-md" required="" value="">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="function">Fonction</label>
                    <div class="col-md-4">
                    <input id="function" name="function" type="text" placeholder="Fonction" class="form-control input-md" value="">

                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton"></label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-info">Valider</button>
                    </div>
                </div>

            </fieldset>
        </form>
    </div>
</div>

{include file="partials/footer.tpl"}