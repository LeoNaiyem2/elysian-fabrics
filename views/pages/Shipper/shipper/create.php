<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create Shipper"]);
Html::link(["class"=>"btn btn-success", "route"=>"shipper", "text"=>"Manage Shipper"]);
echo Form::open(["route"=>"shipper/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Contact Person","type"=>"text","name"=>"contact_person"]);
	echo Form::input(["label"=>"Contact No","type"=>"text","name"=>"contact_no"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
