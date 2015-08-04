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
								<li><a href="{$HTTP_ROOT}profile/view/{$user->id}" class=" glyphicon glyphicon-user"> Bonjour {$user->firstname}</a></li>
								<li><a href="{$HTTP_ROOT}logout"> Déconnexion</a></li>
								{else}

								<li><a id="login-link" href="{$HTTP_ROOT}login" class="glyphicon glyphicon-user" data-target="#login-modal" border="0"> Login</a></li>

								<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">

	    	  					<div class="modal-dialog">
									<div class="loginmodal-container">

									</div>
								</div>
								{/if}
							</ul>
						</div>
					</nav>
				</div><!--fin col-md-12-->
			</div>
		</header>