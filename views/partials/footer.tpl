	</div><!-- /.container -->

	<footer class="blog-footer">
      <p>{$website_title} &copy; 2015</p>
      <p>
        <a href="#">{t}Back to top{/t}</a>
      </p>
    </footer>

    {include file="partials/debug.tpl"}

	<script src="{$JS_ROOT}jquery.min.js"></script>
	<script src="{$JS_ROOT}bootstrap.min.js"></script>

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
      autoplay: 2500,
      autoplayDisableOnInteraction: false
    });
  </script><!--fin swiper-->

</body>
</html>