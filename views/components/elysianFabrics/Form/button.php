<div class='form-group row'>   
    <label for='<?=$arg["name"]?>' class='col-sm-2 col-form-label'><?=$arg["label"]?></label>";   
    <div class='col-sm-10'>
        <input type='button' class='<?=$arg["class"]?>' name='<?=$arg["name"]?>' id='<?=$config["name"]?>' value='<?=$arg["value"]?>' placeholder='<?=$arg["placeholder"]?>' <?=$arg["required"]?> <?=$arg["checked"]?> />    
    </div>
</div>