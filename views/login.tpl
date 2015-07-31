

<?php

use Facebook\FacebookSession;
use Facebook\FacebookRedirectLoginHelper;

FacebookSession::setDefaultApplication(FB_APP_ID, FB_APP_SECRET);

$helper = new FacebookRedirectLoginHelper($root_path.'/register.php');
$loginUrl = $helper->getLoginUrl(
	array(
		'scope' => 'public_profile,mail'
	)
);

$expiration = 60 * 60 * 24 * 7;  // 7 jours

$remember_me = getRememberMe($expiration);

if ($remember_me !== false) {

	$user_id = $remember_me;

	$query = $db->prepare('SELECT * FROM users WHERE id = :id');
	$query->bindValue('id', $user_id);
	$query->execute();
	$user = $query->fetch();

	if (!empty($user)) {
		$_SESSION['user_id'] = $user['id'];
		$_SESSION['firstname'] = $user['firstname'];
		header('Location: index.php');
		exit();
	}
}

//debug($_POST);

$mail = !empty($_POST['mail']) ? $_POST['mail'] : '';
$password = !empty($_POST['password']) ? $_POST['password'] : '';
$remember_me = !empty($_POST['remember_me']) ? intval($_POST['remember_me']) : 0;

$errors = array();


// On a appuyé sur le bouton Envoyer, le formulaire a été soumis
if (!empty($_POST)) {

	if (!empty($mail) && !empty($password)) {

		$query = $db->prepare('SELECT * FROM user WHERE mail = :mail');
		$query->bindValue('mail', $mail);
		$query->execute();
		$user = $query->fetch();

		if (!empty($user)) {

			$crypted_password = $user['pass'];

			if (password_verify($password, $crypted_password)) {

				if (!empty($remember_me)) {
					setRememberMe($user['id'], $expiration);
				}

				$_SESSION['user_id'] = $user['id'];
				$_SESSION['firstname'] = $user['firstname'];

				echo '<div class="alert alert-success" role="success">Authentification réussie</div>';
				echo redirectJS('index.php', 2);
				goto end;
			}
		}
	}

	$errors['authent'] = 'Identifiants incorrects';
}
?>

<h1>Connexion</h1>

{if !empty($errors)}
<div class="alert alert-danger" role="danger">
	{foreach $errors as $error}
		$error.'<br>';
	{/foreach}
</div>
{/if}

<form class="form-horizontal" action="" method="POST" novalidate>

	<div class="form-group{ !empty($errors['authent']) ? ' has-error' : '' }">
		<label for="mail" class="col-sm-2 control-label">mail</label>
		<div class="col-sm-5">
			<input type="mail" id="mail" name="mail" class="form-control" placeholder="mail" value="{ $mail }">
		</div>·
	</div>

	<div class="form-group{ !empty($errors['authent']) ? ' has-error' : '' }">
		<label for="password" class="col-sm-2 control-label">Mot de passe</label>
		<div class="col-sm-5">
			<input type="password" id="password" name="password" class="form-control" placeholder="Mot de passe" value="{ $password }">
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="remember_me" value="1" { $remember_me ? 'checked' : '' }> Se souvenir de moi
				</label>
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">Envoyer</button>
		</div>
	</div>
</form>
<hr>
<form class="form-horizontal" action="" method="POST" novalidate>

	<div class="form-group">
		<label class="col-sm-2 control-label"></label>
		<div class="col-sm-5">
			<a class="btn btn-primary" href="{ $loginUrl }">Facebook Connect</a>
		</div>
	</div>
</form>

<?php
end:

?>
