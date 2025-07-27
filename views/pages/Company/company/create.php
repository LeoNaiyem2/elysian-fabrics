<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create Company"]);
Html::link(["class"=>"btn btn-success", "route"=>"company", "text"=>"Manage Company"]);
echo Form::open(["route"=>"company/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Mobile","type"=>"text","name"=>"mobile"]);
	echo Form::input(["label"=>"Bin","type"=>"text","name"=>"bin"]);
	echo Form::input(["label"=>"Email","type"=>"text","name"=>"email"]);
	echo Form::input(["label"=>"Website","type"=>"text","name"=>"website"]);
	echo Form::input(["label"=>"City","type"=>"text","name"=>"city"]);
	echo Form::input(["label"=>"Area","type"=>"text","name"=>"area"]);
	echo Form::input(["label"=>"Street Address","type"=>"text","name"=>"street_address"]);
	echo Form::input(["label"=>"Post Code","type"=>"text","name"=>"post_code"]);
	echo Form::input(["label"=>"Inactive","type"=>"checkbox","name"=>"inactive","value"=>"1"]);
	echo Form::input(["label"=>"Logo","type"=>"file","name"=>"logo"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
