<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create MfgBom"]);
Html::link(["class"=>"btn btn-success", "route"=>"mfgbom", "text"=>"Manage MfgBom"]);
echo Form::open(["route"=>"mfgbom/save"]);
	echo Form::input(["label"=>"Code","type"=>"text","name"=>"code"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Product","name"=>"product_id","table"=>"products"]);
	echo Form::input(["label"=>"Qty","type"=>"text","name"=>"qty"]);
	echo Form::input(["label"=>"Labour Cost","type"=>"text","name"=>"labour_cost"]);
	echo Form::input(["label"=>"Date","type"=>"date","name"=>"date"]);
	echo Form::input(["label"=>"Remark","type"=>"textarea","name"=>"remark"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
