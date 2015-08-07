{include file="partials/header.tpl"}
<div class="row row-profile">
	<div class="col-md-8 col-xs-12 profile-information-wrapper">
		<h3>Entreprise<!-- <span class="profile-information-prom-dates" value="{$user->register_date}"></span> --></h3>
	</div>
</div>

<div class="row row-profile">
	<div class="col-md-8 col-xs-12 profile-information-wrapper">
		<div class="col-xs-9 profile-information">

			<form method="POST">
				<div class="form-group">
				  <label class="col-md-4 control-label" for="company_name">Entreprise:</label>
				 	<div class="col-md-5">
				  		<input id="company_name" name="company_name" type="text" placeholder="Raison sociale" class="form-control input-md" value="{$profile_companyview->company_name}">
				 	</div>
				</div>

				<div class="form-group">
				  <label class="col-md-4 control-label" for="name">Nom:</label>
				 	<div class="col-md-5">
				  		<input id="company_name" name="name" type="text" placeholder="Nom" class="form-control input-md" value="{$user->lastname}">
				 	</div>
				</div>

				<div class="form-group">
				  <label class="col-md-4 control-label" for="firstname">Prénom:</label>
				 	<div class="col-md-5">
				  		<input id="company_name" name="firstname" type="text" placeholder="Prénom" class="form-control input-md" value="{$user->firstname}">
				 	</div>
				</div>

				<div class="form-group">
				 	<label class="col-md-4 control-label" for="email">Email</label>
				 	<div class="col-md-5">
				 		<input id="company_name" name="email" type="text" placeholder="email" class="form-control input-md" value="{$user->email}">
				 	</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="function">Fonction: </label>
					<div class="col-md-4">
						<input id="function" name="function" type="text" placeholder="Fonction" class="form-control input-md" value="{$profile_companyview->function}">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="singlebutton"></label>
					<div class="col-md-4">
					 	<button id="singlebutton" name="companyRegisterSucces" class="btn btn-info" type="submit" value="companyRegisterSucces">Valider</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

{include file="partials/footer.tpl"}