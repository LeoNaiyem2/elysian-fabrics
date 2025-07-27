<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create HmsPatient"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmspatient", "text"=>"Manage HmsPatient"]);
echo Form::open(["route"=>"hmspatient/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Mobile","type"=>"text","name"=>"mobile"]);
	echo Form::input(["label"=>"Dob","type"=>"text","name"=>"dob"]);
	echo Form::input(["label"=>"Mob Ext","type"=>"text","name"=>"mob_ext"]);
	echo Form::input(["label"=>"Male","type"=>"radio","name"=>"gender","value"=>"0"]);
	echo Form::input(["label"=>"Female","type"=>"radio","name"=>"gender","value"=>"1"]);
	echo Form::input(["label"=>"Profession","type"=>"text","name"=>"profession"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
