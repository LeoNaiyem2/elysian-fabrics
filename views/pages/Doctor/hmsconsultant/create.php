<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create HmsConsultant"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsconsultant", "text"=>"Manage HmsConsultant"]);
echo Form::open(["route"=>"hmsconsultant/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Hms Department","name"=>"hms_department_id","table"=>"hms_departments"]);
	echo Form::input(["label"=>"Designation","type"=>"textarea","name"=>"designation"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
