</div><!-- /.container -->

<footer>
      <div class="container">
      <div class="row">
          <!-- <div class="col-md-1"></div> -->
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
                  <div class="col-md-4">
                  <div class="collapse navbar-collapse" id="example-navbar-collapse">
                      <ul class="nav navbar-nav navbar-left">
                          <li><img alt="Brand" src="{$IMG_ROOT}WB3network.png" width="100" lenght="100" alt="WF3 Network logo" class="logo-footer"><br>
                            <p class="navbar-text"> 18 rue Geoffroy L'Asnier <br> 75004 Paris, FRANCE <br>
                            +33 (0)8 05 62 23 45 <br>
                          Découvrez l'école WebForce3 sur : <a href="http://www.wf3.fr/">http://www.wf3.fr/</a>
                          </li>
                            </p>
                      </ul>
                  </div> <!-- fin col 4 adresse-->   
                  </div>
                  <div class="col-md-4">  
                        <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.2106918459162!2d2.357434400000004!3d48.85419259999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e671fd10fa77a9%3A0xbefa2358f9e7a776!2s18+Rue+Geoffroy+l&#39;Asnier%2C+75004+Paris!5e0!3m2!1sfr!2sfr!4v1438079876768" width="250" height="150" frameborder="0" style="border:10px" allowfullscreen align="center"></iframe>
                  </div> <!-- fin col 4 iframe-->        

                  <div class="col-md-4"> 

              
                      <ul class="list-unstyled">
                        <li><a href="#" class="footer-link" target="_blank"> Plan du site <i class="glyphicon glyphicon-chevron-right"></i></a></li>
                          <li><a href="https://www.doyoubuzz.com/fr/p/policy" class="footer-link" target="_blank"> Conditions générales d'utilisation <i class="glyphicon glyphicon-chevron-right"></i></a></li> 

                          <li><a href="https://www.doyoubuzz.com/fr/p/charter" class="footer-link" target="_blank"> Charte données personnelles <i class="glyphicon glyphicon-chevron-right"></i></a></li> 

                          <li><a href="https://www.doyoubuzz.com/fr/p/mentions" class="footer-link" target="_blank"> Mentions légales<i class="glyphicon glyphicon-chevron-right"></i></a> </li> 

                         <li><a href="#" class="footer-link" target="_blank"> Blog <i class="glyphicon glyphicon-chevron-right"></i></a></li> 
                      </ul>

                      <p class="copyright">&copy; 2015 WF3 Network</p>
                  </div> <!-- fin col 4 iframe-->        
               
              </nav>
          </div><!--fin col-md-12-->
          <!-- <div class="col-md-1"></div> -->
      </div><!-- fin row-->
    </div> <!-- fin container-->
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