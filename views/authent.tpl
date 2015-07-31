{* Vérifie si la page est appelé en Ajax et si elle ne l'ai pas elle va afficher le header et le footer => servira pour le profile simple pour se logger pour voir le profil complet*}
{if !$isAjax}
{include file="partials/header.tpl"}
{/if}

	<div class="blog-header">
		<h1 class="blog-title">{$title}</h1>
		<p class="lead blog-description">{$description}</p>
	</div>

	<div class="row">

		<div class="col-sm-8 blog-main">

			{if !empty($errors)}
			<div class="alert alert-danger" role="danger">{if !empty($errors['authent'])}{$errors['authent']}{else}{$title} {t}failed{/t}{/if}</div>
			{/if}

			{if !empty($isPost) && !empty($success)}
				<div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
				{Utils::redirectJS($HTTP_ROOT, 1)}
			{/if}

			{if isset($form) && empty($success)}
				{$form}
			{/if}

			<hr>
			<p>Vous êtes une <b>entreprise<b> à la rechercher de développeurs</b>
			<button type="button" name="register" class="register-btn" value="Register"><a href="{$HTTP_ROOT}register"> Inscrivez-vous </a></button>


			{*if !empty($fb_login_url)*}
	<!-- 		<hr>

			<a href="{$fb_login_url}" class="btn btn-primary">{t}Se connecter avec Facebook{/t}</a> -->
			{*/if*}

		</div>

	</div>

{if !$isAjax}
{include file="partials/footer.tpl"}
{/if}