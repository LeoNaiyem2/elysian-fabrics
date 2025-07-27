<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit Shipper"]);
Html::link(["class"=>"btn btn-success", "route"=>"shipper", "text"=>"Manage Shipper"]);
echo Form::open(["route"=>"shipper/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$shipper->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$shipper->name"]);
	echo Form::input(["label"=>"Contact Person","type"=>"text","name"=>"contact_person","value"=>"$shipper->contact_person"]);
	echo Form::input(["label"=>"Contact No","type"=>"text","name"=>"contact_no","value"=>"$shipper->contact_no"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
