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
        {include file="partials/directory-search.tpl"}



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
          <!-- FIN BAR "ORDER BY" -->

          <div class="panel-body"></div>



          <!-- LIST PROFILES -->
          {foreach $profiles as $profile}
          <div class="pull-left profile col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <img class="profile-thumbnail" src="https://randomuser.me/api/portraits/med/women/69.jpg" height="125" width="125"  />
            <div class="caption">
              <h3>{$profile->firstname}<br> {$profile->lastname}</h3>
              <p>{$profile->date_promo}</p>
              <p><a class="btn btn-default" href="{$HTTP_ROOT}profile/view/{$profile->id}" role="button">Voir le profil</a></p>
            </div> <!-- FIN CAPTION -->
          </div> <!-- FIN pull-left profile col-xs-12 col-sm-12 col-md-4 col-lg-4 -->
          {/foreach}


          <div class="panel-body"></div>

        </div><!-- FIN col-md-8-->
        <!-- END LIST PROFILES -->

      </div><!--FIN ROW-->

    {include file="partials/footer.tpl"}

  </body>
</html>
