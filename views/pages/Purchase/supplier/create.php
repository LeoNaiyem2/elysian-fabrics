<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create Supplier"]);
Html::link(["class"=>"btn btn-success", "route"=>"supplier", "text"=>"Manage Supplier"]);
echo Form::open(["route"=>"supplier/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Mobile","type"=>"text","name"=>"mobile"]);
	echo Form::input(["label"=>"Email","type"=>"text","name"=>"email"]);
	echo Form::input(["label"=>"Photo","type"=>"file","name"=>"photo"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
