<?php

echo Page::title(["title"=>"Create Cattle"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-danger", "route"=>"cattle", "text"=>"Manage Cattle"]);
echo Page::context_open();
echo Form::open(["route"=>"cattle/save"]);
    echo csrf();
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Region","type"=>"text","name"=>"region"]);
	echo Form::input(["label"=>"Dob","type"=>"text","name"=>"dob"]);
	echo Form::input(["label"=>"Color","type"=>"text","name"=>"color"]);	
	echo Form::input(["label"=>"Photo","type"=>"file","name"=>"photo"]);
	echo Form::input(["label"=>"Male","type"=>"radio","name"=>"gender","value"=>"0"]);
	echo Form::input(["label"=>"Female","type"=>"radio","name"=>"gender","value"=>"1"]);
	echo Form::input(["label"=>"Cattle Category","name"=>"cattle_category_id","table"=>"cattle_categories"]);
	echo Form::input(["label"=>"Description","type"=>"textarea","name"=>"description"]);
	echo Form::input(["name"=>"create", "type"=>"submit","class"=>"btn btn-primary offset-2", "value"=>"Save"]);
	echo Form::close();

echo Page::context_close();
echo Page::body_close();
?>

<x-input label="Name" type="text" name="name">