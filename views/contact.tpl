{include file="partials/header.tpl"}

<h1>Contact</h1>

{if !is_null($result)}

	{if empty($result)}
		<div class="alert alert-danger" role="danger">Une erreur est survenue</div>
	{else}
		<div class="alert alert-success" role="success">Merci :)</div>
	{/if}

{else}

	{if !empty($errors)}
	<div class="alert alert-danger" role="danger">
		{foreach $errors as $error}
			{$error}<br>
		{/foreach}
	</div>
	{/if}

	<form class="form-horizontal" action="" method="POST" novalidate>

		<div class="form-group{if !empty($errors['lastname'])} has-error{/if}">
			<label for="lastname" class="col-sm-2 control-label">Nom</label>
			<div class="col-sm-3">
				<input type="text" id="lastname" name="lastname" class="form-control" placeholder="Nom" value="{$contact->lastname}">
			</div>
		</div>

		<div class="form-group{if !empty($errors['firstname'])} has-error{/if}">
			<label for="firstname" class="col-sm-2 control-label">Prénom</label>
			<div class="col-sm-3">
				<input type="text" id="firstname" name="firstname" class="form-control" placeholder="Prénom" value="{$contact->firstname}">
			</div>
		</div>

		<div class="form-group{if !empty($errors['mail'])} has-error{/if}">
			<label for="mail" class="col-sm-2 control-label">mail</label>
			<div class="col-sm-5">
				<input type="mail" id="mail" name="mail" class="form-control" placeholder="mail" value="{$contact->mail}">
			</div>
		</div>

		<div class="form-group{if !empty($errors['message'])} has-error{/if}">
			<label for="message" class="col-sm-2 control-label">Message</label>
			<div class="col-sm-3">
				<textarea id="message" name="message" class="form-control" placeholder="Your message">{$contact->message}</textarea>
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Envoyer</button>
			</div>
		</div>
	</form>

{/if}

{include file="partials/footer.tpl"}