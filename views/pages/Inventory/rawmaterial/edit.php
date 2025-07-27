<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit RawMaterial"]);
Html::link(["class"=>"btn btn-success", "route"=>"rawmaterial", "text"=>"Manage RawMaterial"]);
echo Form::open(["route"=>"rawmaterial/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$rawmaterial->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$rawmaterial->name"]);
	echo Form::input(["label"=>"Supplier Name","type"=>"text","name"=>"supplier_name","value"=>"$rawmaterial->supplier_name"]);
	echo Form::input(["label"=>"Unit Cost","type"=>"text","name"=>"unit_cost","value"=>"$rawmaterial->unit_cost"]);
	echo Form::input(["label"=>"Total Cost","type"=>"text","name"=>"total_cost","value"=>"$rawmaterial->total_cost"]);
	echo Form::input(["label"=>"Color","type"=>"text","name"=>"color","value"=>"$rawmaterial->color"]);
	echo Form::input(["label"=>"Quantity","type"=>"text","name"=>"quantity","value"=>"$rawmaterial->quantity"]);
	echo Form::input(["label"=>"Unit","type"=>"text","name"=>"unit","value"=>"$rawmaterial->unit"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
