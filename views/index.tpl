{include file="partials/header.tpl"}

<div class="row">
    <div class="col-md-12">
        <!--swiper-->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img class="third-slide img-responsive" src="{$IMG_ROOT}home-slider/wf3-0.jpg" alt="Responsive image">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>titre</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="recipes.php?type=3" role="button">Voir news</a></p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img class="third-slide img-responsive" src="{$IMG_ROOT}home-slider/wf3-1.jpg" alt="Responsive image">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>titre</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="recipes.php?type=3" role="button">Voir news</a></p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img class="third-slide img-responsive" src="{$IMG_ROOT}home-slider/wf3-2.jpg" alt="Responsive image">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>titre</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="recipes.php?type=3" role="button">Voir news</a></p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img class="third-slide img-responsive" src="{$IMG_ROOT}home-slider/wf3-3.jpg" alt="Responsive image">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>titre</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="recipes.php?type=3" role="button">Voir news</a></p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img class="third-slide img-responsive" src="{$IMG_ROOT}home-slider/wf3-4.jpg" alt="Responsive image">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>titre</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="recipes.php?type=3" role="button">Voir news</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>

            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div><!--fin swipper container-->
    </div><!--fin col-md-10-->
</div><!--fin row-->

<div class="row">
    <div class="col-md-12">
        <ol class="breadcrumb">
          <li><a href="#">Accueil</a></li>
          <!--li><a href="#">Library</a></li>
          <li class="active">Data</li-->
        </ol>
      </div>
  </div>

<div class="row">
    <div class="sidebar col-md-8">
        <div class="panel panel-default embed-responsive-item">
            <div class="panel-heading">Les profils du jour</div>
                <div class="panel-body container">
                <div class="sidebar col-md-8">

                {foreach $rand_profiles as $rand_profile}
                    <div class="rand_thumbnails_p col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <img class="profile-thumbnail" src="{$rand_profile->photo}"  height="80" width="80"  />
                        <div class="caption">
                            <h3>{$rand_profile->firstname} {$rand_profile->lastname}</h3>
                            <p>{$rand_profile->date_promo}</p>
                            <p><a class="btn btn-default" href="{$HTTP_ROOT}profile/view/{$rand_profile->id}" role="button">Voir profil</a></p>
                        </div>
                    </div>
                {/foreach}

                </div>
            </div>
        </div>

        <div class="panel panel-default embed-responsive-item">
            <div class="panel-body">
                <div class="sidebar col-md-6"><!--file facebook-->
                    <div class="panel panel-default embed-responsive-item">
                        <div class="panel-heading">Fil Facebook </div>
                        <div class="panel-body">
                            <div class="fb-page" data-href="https://www.facebook.com/webforce3" data-width="500" data-height="445" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="true">
                                <div class="fb-xfbml-parse-ignore">
                                    <blockquote cite="https://www.facebook.com/webforce3"><a href="https://www.facebook.com/webforce3">Webforce3</a></blockquote>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--fin col-md-6-->
                <div class="sidebar col-md-6"> <!--rss-->
                    <div class="list-group">
                        <div class="list-group-item ">
                            <h3 class="list-group-item-heading"><a class="glyphicon glyphicon-comment">Actualités</a></h3>

                            <iframe src="http://www.wf3.fr/" width="290px" height="450px"></iframe><!--RSS-->
                        </div>
                    </div>
                </div><!--fin col-md-6-->
            </div><!--fin panel body-->
        </div>
    </div><!--fin col-md-8-->

    <div class="sidebar col-md-4">
        <div class="panel panel-default embed-responsive-item">
            <div class="panel-body">
                <div class="list-group">
                    <div class="list-group-item ">
                        <h3 class="list-group-item-heading"><i class="fa fa-graduation-cap"> Derniers membres</i></h3>
                        <ul>
                            <li>
                                <a href="#">
                                    <h5>Rene beaugendre</h5>
                                    <p class="list-group-item-text">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <h5>Kyle Beauregard</h5>
                                    <p class="list-group-item-text">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <h5>Bernard Gentil</h5>
                                    <p class="list-group-item-text">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="list-group">
                    <div class="list-group-item ">
                        <h3 class="list-group-item-heading"><i class="fa fa-newspaper-o"> Dernières annonces</i></h3>
                        <ul>
                            <li>
                                <a href="#" class="nodeco">
                                    <h5>Recherce integrateur</h5>
                                    <p class="list-group-item-text">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nodeco">
                                    <h5>Recherce specialiste</h5>
                                    <p class="list-group-item-text">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nodeco">
                                    <h5>Recherce stagiaire</h5>
                                    <p class="list-group-item-text">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </a>
                            </li>
                            <!-- <iframe src="http://www.alsacreations.com/" width="250px" height="327px"></iframe> -->
                        </ul>
                    </div>
                </div>
            </div><!-- .panel-body -->
        </div>
    </div>
</div><!--fin row-->
<!--slider profil-->

{include file="partials/footer.tpl"}
