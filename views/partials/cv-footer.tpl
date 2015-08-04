<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-info">Envoyer !</button>
  </div>
</div>

{if !empty($errors)}
      <div class="alert alert-danger" role="danger">{if !empty($errors['authent'])}{$errors['authent']}{else}{$title} {t}failed{/t}{/if}</div>
      {/if}

      {if !empty($isPost) && !empty($success)}
        <div class="alert alert-success" role="success">{$title} {t}success{/t}</div>
        {Utils::redirectJS("{$HTTP_ROOT}cvform", 1)}
      {/if}

      {if isset($form) && empty($success)}
        {$form}
      {/if}

</fieldset>
</form>
</div>
</div>
