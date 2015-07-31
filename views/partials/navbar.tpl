<header>
			<div class="row">
				<div class="col-md-12">
					<nav class="navheader">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">
									<img alt="Brand" src="{$IMG_ROOT}WB3network.png">
								</a>
							</div>
						</div>
					</nav>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-inverse navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#example-navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="example-navbar-collapse">
							<ul class="nav navbar-nav navbar-left">
								{foreach from=$pages item=page}
								<li><a class="blog-nav-item {if $page.url == $current_page || $page.url == $target || $page.url == "$target/$action"}active{/if}" href="{$HTTP_ROOT}{$page.url}">{$page.name}</a></li>
								{/foreach}
							</ul>

							<ul class="nav navbar-nav navbar-right">
								{if User::isLogged()}
								<li><a href="{$HTTP_ROOT}logout" class=" glyphicon glyphicon-user"> Déconnexion</a></li>
								{else}

								<li><a id="login-link" href="{$HTTP_ROOT}login" class="glyphicon glyphicon-user" data-target="#login-modal" border="0"> Login</a></li>

								<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">

	    	  					<div class="modal-dialog">
									<div class="loginmodal-container">
										{*
										<h1>Connexion</h1><br>
										{if !empty($errors)}
										<div class="alert alert-danger" role="danger">
											<a href="{$HTTPS_ROOT}authent.tpl">Redirect</a>
										</div>
										{/if}
										<form method="post">
											<input type="text" name="mail" placeholder="e-mail" value="">
											<input type="password" name="password" placeholder="mot de passe">
											<input type="submit" name="login" class="login loginmodal-submit" value="Login">
											<ul class="nav navbar-nav navbar-right">
											{if User::isLogged()}
												<li><a href="{$HTTP_ROOT}logout" class=" glyphicon glyphicon-user"> Déconnexion</a></li>
											{else}
												<!-- <li><a href="{$HTTP_ROOT}login" class=" glyphicon glyphicon-user"> Login User</a></li> -->
												<!-- <li><a href="#" class="glyphicon glyphicon-user"> Login Entreprise</i></a></li> -->
											{/if}

											</ul>
										</form>
										<!-- facebook login -->
										<!-- {if !empty($fb_login_url)}
										<hr>
										<a href="{$fb_login_url}" class="btn btn-primary">{t}Connectez vous avec Facebook{/t}</a>
										{/if} -->
										<hr>
										<div class="login-help">
											<p>Vous êtes une <b>entreprise<b> à la rechercher de développeurs
											<button type="button" name="register" class="" value="Login"><a href="#"> Inscrivez-vous </a></button></p>
											<!-- <a href="{$HTTP_ROOT}cvform">Étudiant</a> - <a href="#">Entreprise</a> -->
										</div><!-- end modal-dialog -->
										*}
									</div>
								</div>
								{/if}
							</ul>
						</div>
					</nav>
				</div><!--fin col-md-12-->
			</div>
		</header>