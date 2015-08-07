{include file="partials/header.tpl"}

<link rel="stylesheet" href="{$CSS_ROOT}companysuccess.css">

<div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
<div class="panel panel-default">
	<div class="panel-body">
		<p class="success">Nous vous remercions de votre inscription à notre service Webforce3 Network. <br>
		Vous recevrez un Email de confirmation lors de la validations de votre compte. </p>
	</div>
</div>
{Utils::redirectJS("{$HTTP_ROOT}home", 5)}

{include file="partials/footer.tpl"}