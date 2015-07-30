{include file="partials/header.tpl"}

    <div class="row">
      <div class="col-md-12">
        <ol class="breadcrumb">
          <li><a href="#">Accueil</a></li>
          <li class="active"><a href="#">Annuaire</a></li>
          <!--li class="active">Data</li-->
          </ol>
        </div>
      </div> <!--FIN ROW-->


      <div class="row">


        <!-- SEARCH SIDEBAR -->
        <div class="col-md-4">
          <div class="panel panel-default embed-responsive-item">
            <div class="panel-body">

            <h3 class="search-title">Recherche avancée</h3>

              <form class="form-horizontal" action="" method="POST" novalidate>
                <div class="form-group">
                  <label for="nom" class="col-sm-4 control-label">Nom</label>
                  <div class="col-sm-8">
                   <input type="text" id="nom" name="nom" class="form-control" placeholder="Nom" value="">
                 </div>
                </div>

                <div class="form-group">
                  <label for="prenom" class="col-sm-4 control-label">Prénom</label>
                  <div class="col-sm-8">
                    <input type="text" id="prenom" name="prenom" class="form-control" placeholder="Prénom" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label for="projet" class="col-sm-4 control-label">Projet</label>
                  <div class="col-sm-8">
                    <input type="text" id="projet" name="projet" class="form-control" placeholder="Projet" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label for="localisation" class="col-sm-4 control-label">Localisation</label>
                  <div class="col-sm-8">
                    <input type="text" id="localisation" name="localisation" class="form-control" placeholder="Localisation" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label for="session" class="col-sm-4 control-label">Session</label>
                  <div class="col-sm-8">
                    <input type="date" id="session" name="session" class="form-control" placeholder="Session" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label for="keywords" class="col-sm-4 control-label">Mots Clés</label>
                  <div class="col-sm-8">
                    <input type="text" id="keywords" name="keywords" class="form-control" placeholder="Mots Clés" value="">
                  </div>
                </div>

                <div class="form-group pull-right">
                  <div class="col-sm-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Rechercher</button>
                  </div>
                </div>

              </form>
            </div><!--END panel-body  -->
          </div><!--END panel panel-default embed-responsive-item-->
        </div><!-- END col-md-3-->
        <!-- END SEARCH SIDEBAR -->



        <!-- LISTING PROFILES -->

        <div class="col-md-8">
          <!-- BAR "ORDER BY" -->
          <form class="form-inline pull-right col-xs-12" method="GET">
            <div class="form-group">
              <label for="sort">Trier </label>
              <select id="sort" name="sort" class="form-control">
                 <option value="nom">Nom</option>
                 <option value="reviews">Others</option>
              </select>
              <select id="session" name="session" class="form-control">
               <option value="ASC">Ascending</option>
               <option value="DESC">Descending</option>
              </select>
            </div>

            <div class="form-group">
              <button type="submit" class="btn btn-default">Random</button>
            </div>
          </form>
          <!-- END BAR "ORDER BY" -->

          <div class="panel-body"></div>


          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="{$HTTP_ROOT}profile-simple" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="#" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="#" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="#" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="#" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="#" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="#" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="#" role="button">Voir profil</a></p>
            </div>
          </div>

          <div class="profile col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="{$IMG_ROOT}default.png" height="125" width="125"  />
            <div class="caption">
              <h3>Nom Prénom</h3>
              <p>Date promo</p>
              <p><a class="btn btn-default" href="{$HTTP_ROOT}profile-simple" role="button">Voir profil</a></p>
            </div>
          </div>
          <div class="panel-body"></div>

        </div><!-- FIN col-md-7-->

        <!-- END LISTING PROFILES -->






      </div><!--FIN ROW-->

{include file="partials/footer.tpl"}

</body>
</html>
