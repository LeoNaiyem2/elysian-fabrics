<?php
echo Page::title(["title"=>"Create Contact"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-success", "route"=>"contact", "text"=>"Manage Contact"]);
echo Page::context_open();
echo Form::open(["route"=>"contact/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Contact Category","name"=>"contact_category_id","table"=>"contact_categories"]);
	echo Form::input(["label"=>"Contact No","type"=>"text","name"=>"contact_no"]);
	echo Form::input(["label"=>"Email","type"=>"text","name"=>"email"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
echo Page::context_close();
echo Page::body_close();
