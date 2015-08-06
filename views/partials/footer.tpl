</div><!-- /.container -->

<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-inverse navbar-default" role="navigation">

					 <div class="navbar-header">

					</div>
					<div class="col-md-4">
						<ul class="nav navbar-nav navbar-left">
								<li>
									<img alt="Brand" src="{$IMG_ROOT}WB3network.png" width="100" lenght="100" alt="WF3 Network logo" class="logo-footer">
									<br>
									<p class="navbar-text"> 18 rue Geoffroy L'Asnier <br> 75004 Paris, FRANCE <br>
										+33 (0)8 05 62 23 45 <br>
										Découvrez l'école WebForce3 sur : <a href="http://www.wf3.fr/">http://www.wf3.fr/</a>
									</p>
								</li>
						</ul>
					</div> <!-- fin col 4 adresse-->
					<div class="col-md-4 hidden-xs">
						<iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.2106918459162!2d2.357434400000004!3d48.85419259999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e671fd10fa77a9%3A0xbefa2358f9e7a776!2s18+Rue+Geoffroy+l&#39;Asnier%2C+75004+Paris!5e0!3m2!1sfr!2sfr!4v1438079876768" width="250" height="150" frameborder="0" style="border:10px" allowfullscreen align="center"></iframe>
					</div> <!-- fin col 4 iframe-->

					<div class="col-md-4">

						<ul class="list-unstyled">
							<li><a href="{$HTTP_ROOT}cgu" class="footer-link" target="_blank"> Conditions générales d'utilisation <i class="glyphicon glyphicon-chevron-right"></i></a></li>

							<li><a href="{$HTTP_ROOT}charte" class="footer-link" target="_blank"> Charte des données personnelles <i class="glyphicon glyphicon-chevron-right"></i></a></li>

							<li><a href="{$HTTP_ROOT}mentionslegales" class="footer-link" target="_blank"> Mentions légales<i class="glyphicon glyphicon-chevron-right"></i></a> </li>

							<li><a href="#" class="footer-link" target="_blank"> Plan du site <i class="glyphicon glyphicon-chevron-right"></i></a></li>
						</ul>

						<p class="copyright">&copy; WF3 Network 2015</p>
					</div> <!-- /.col-md-4 -->
				</nav>
			</div><!--fin col-md-12-->
		</div><!-- fin row-->
	</div> <!-- fin container-->
</footer>

{include file="partials/debug.tpl"}

<script src="{$JS_ROOT}jquery.min.js"></script>
<script src="{$JS_ROOT}bootstrap.min.js"></script>
<!-- added for autocomplete -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!--facebook fil-->
<script>(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.4";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script><!--facebook fil-->

<!--swipper-->
<script src="{$CSS_ROOT}Swiper-3.1.0/dist/js/swiper.min.js"></script>

<script>
	var swiper = new Swiper('.swiper-container', {
		pagination: '.swiper-pagination',
		nextButton: '.swiper-button-next',
		prevButton: '.swiper-button-prev',
		slidesPerView: 1,
		paginationClickable: true,
		spaceBetween: 30,
		loop: true,
		centeredSlides: true,
// autoplay: 5000,
autoplayDisableOnInteraction: false
});
</script><!--fin swiper-->
<script>
	var swiperProject = new Swiper('.s2', {
		pagination: '.swiper-pagination-project',
		nextButton: '.swiper-button-next-project',
		prevButton: '.swiper-button-prev-project',
		slidesPerView: 1,
		paginationClickable: true,
		spaceBetween: 30,
		loop: true,
		centeredSlides: true,
	});
</script><!--fin swiper-->
<script>
	var swiperProfile1 = new Swiper('.s3', {
		nextButton: '.swiper-button-next-same-project',
		prevButton: '.swiper-button-prev-same-project',
		slidesPerView: 3,
		spaceBetween: 100,
		loop: true,
		centeredSlides: true,
	});
</script><!--fin swiper-->
<script>
	var swiperProfile2 = new Swiper('.s4', {
		nextButton: '.swiper-button-next-same-prom',
		prevButton: '.swiper-button-prev-same-prom',
		slidesPerView: 3,
		spaceBetween: 100,
		loop: true,
		centeredSlides: true,
	});
</script><!--fin swiper-->
<script>
	var swiperProfile3 = new Swiper('.s5', {
		nextButton: '.swiper-button-next-same-other',
		prevButton: '.swiper-button-prev-same-other',
		slidesPerView: 3,
		spaceBetween: 100,
		loop: true,
		centeredSlides: true,
	});
</script><!--fin swiper-->
<script>
	var swiperProjectMini = new Swiper('.s6', {
		nextButton: '.swiper-button-next-project-mini',
		prevButton: '.swiper-button-prev-project-mini',
		slidesPerView: 1,
		paginationClickable: true,
		spaceBetween: 30,
		loop: true,
		centeredSlides: true,
	});
</script><!--fin swiper-->

<!-- script autocomplete not working -->
<script>
{literal}
$(document).ready(function() {
	$(function() {
		var $tags = $('.tags')
		$tags.autocomplete({
	  		source: [ "HTML5", "CSS3", "PHP", "SQL", "Javascript", "CMS", "Wordpress" ]
		});
 	});
 });
{/literal}
</script>

<!-- Gère la connexion(login) dans la fenêtre modale -->
<script>
var HTTP_ROOT = '{$HTTP_ROOT}';
{literal}

function login(href, target) {

	var post = typeof(arguments[2]) ? arguments[2] : null;

	var options = {
		url: href,
		dataType: 'html'
	};

	if (post != null) {
		options.method = 'POST';
		options.data = post;
	}

	$.ajax(options).done(function(result) {

		$('.loginmodal-container').html(result);

		$(target).modal('show');

		$('#form-login').submit(function(e) {
			e.preventDefault();

			var href = $(this).attr('action');
			var target = '#login-modal';

			login(href, target, $(this).serialize());
		});
	});
}

$(document).ready(function() {

	$('#login-link').click(function(e) {
		e.preventDefault();

		var href = $(this).attr('href');
		var target = $(this).data('target');

		login(href, target);
	});

	$(document).delegate('.profile-action', 'click', function() {

		var type = $(this).data('type');
		var action = $(this).data('action');
		var method = typeof($(this).data('method')) != 'undefined' ? $(this).data('method') : 'POST';
		var id = parseInt(typeof($(this).data('id')) != 'undefined' ? $(this).data('id') : 0);

		var url = HTTP_ROOT+'profile/'+type+'/'+action;
		if (id != 0) {
			url += '/'+id;
		}

		$.ajax({
			type: method,
			url: url,
			data: $(this).closest('form').serialize(),
			dataType: 'html'
		}).done(function(result) {
			//console.log(result);
			$('#'+type).html(result);
			//$(location).attr('href', HTTP_ROOT+'profile/cvform#experience')

		});

		return false;

	});

});
{/literal}
</script>


</body>
</html>