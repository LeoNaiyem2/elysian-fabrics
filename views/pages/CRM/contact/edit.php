<?php
echo Page::title(["title"=>"Edit Contact"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-success", "route"=>"contact", "text"=>"Manage Contact"]);
echo Page::context_open();
echo Form::open(["route"=>"contact/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$contact->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$contact->name"]);
	echo Form::input(["label"=>"Contact Category","name"=>"contact_category_id","table"=>"contact_categories","value"=>"$contact->contact_category_id"]);
	echo Form::input(["label"=>"Contact No","type"=>"text","name"=>"contact_no","value"=>"$contact->contact_no"]);
	echo Form::input(["label"=>"Email","type"=>"text","name"=>"email","value"=>"$contact->email"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
echo Page::context_close();
echo Page::body_close();
