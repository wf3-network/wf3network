{include file="partials/header.tpl"}

<div class="row">
  <div class="col-md-12">


<!-- <form class="form-horizontal">
<fieldset> -->

    {if !empty($errors)}
      <div class="alert alert-danger" role="danger">Errros...</div>
    {/if}


    {if !empty($isPost) && !empty($success)}
      <div class="alert alert-success" role="success">Success</div>
    {/if}

    {if isset($form) && empty($success)}
      {$form}
    {/if}


<!--       <form class="form-horizontal {$class}" id="{$id}" name="{$name}"  action="{$action}" method="{$method}" novalidate >
      <fieldset> -->

      <!-- Form Name -->
<!--       <legend>Entreprise</legend> -->

      <!-- Text input-->
<!--       <div class="form-group">
        <label class="col-md-4 control-label" for="companyname">Entreprise</label>
        <div class="col-md-5">
        <input id="companyname" name="companyname" type="text" placeholder="Raison sociale" class="form-control input-md" required="">

        </div>
      </div> -->

      <!-- Text input-->
 <!--      <div class="form-group">
        <label class="col-md-4 control-label" for="function">Fonction</label>
        <div class="col-md-4">
        <input id="function" name="function" type="text" placeholder="Fonction" class="form-control input-md">

        </div>
      </div> -->

      <!-- Text input-->
<!--       <div class="form-group">
        <label class="col-md-4 control-label" for="firstname">Prénom</label>
        <div class="col-md-4">
        <input id="firstname" name="firstname" type="text" placeholder="Prénom" class="form-control input-md">

        </div>
      </div> -->

      <!-- Text input-->
  <!--     <div class="form-group">
        <label class="col-md-4 control-label" for="lastname">Nom</label>
        <div class="col-md-4">
        <input id="lastname" name="lastname" type="text" placeholder="Nom" class="form-control input-md" required="">


        </div>
      </div> -->

      <!-- Text input-->
    <!--   <div class="form-group">
        <label class="col-md-4 control-label" for="mail">E-Mail</label>
        <div class="col-md-4">
          <div class="input-group">
          <input type="text" class="form-control" placeholder="mail" aria-describedby="nom_mail">
          </div>
        </div>
      </div> -->

      <!-- Button -->
    <!--   <div class="form-group">
        <label class="col-md-4 control-label" for="singlebutton"></label>
        <div class="col-md-4">
          <button type="submit" class="btn btn-default">Send</button>

        </div>
      </div>

      </fieldset>
    </form> -->




  </div>
</div>

{include file="partials/footer.tpl"}

