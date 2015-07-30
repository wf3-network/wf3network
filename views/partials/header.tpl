<!DOCTYPE html>
<html lang="{$lang}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="{$website_description}">
	<meta name="author" content="{$author}">

	<title>{$title}</title>

	<link rel="icon" type="image/png" href="{$IMG_ROOT}favicon.png" />

	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap-theme.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}Swiper-3.1.0/dist/css/swiper.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}font-awesome.min.css">

	<link rel="stylesheet" href="{$CSS_ROOT}main.css">


</head>

<body>
	<div id="fb-root"></div>
	<div class="container">
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
								<li><a href="{$HTTP_ROOT}login" class=" glyphicon glyphicon-user"> Login User</a></li>
								<li><a href="#" class="glyphicon glyphicon-user"> Login Entreprise</i></a></li>
								{/if}
							</ul>
						</div>
					</nav>
				</div><!--fin col-md-12-->
			</div>
		</header>

		<!--   <div class="container"> -->
