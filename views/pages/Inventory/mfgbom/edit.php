<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit MfgBom"]);
Html::link(["class"=>"btn btn-success", "route"=>"mfgbom", "text"=>"Manage MfgBom"]);
echo Form::open(["route"=>"mfgbom/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$mfgbom->id"]);
	echo Form::input(["label"=>"Code","type"=>"text","name"=>"code","value"=>"$mfgbom->code"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$mfgbom->name"]);
	echo Form::input(["label"=>"Product","name"=>"product_id","table"=>"products","value"=>"$mfgbom->product_id"]);
	echo Form::input(["label"=>"Qty","type"=>"text","name"=>"qty","value"=>"$mfgbom->qty"]);
	echo Form::input(["label"=>"Labour Cost","type"=>"text","name"=>"labour_cost","value"=>"$mfgbom->labour_cost"]);
	echo Form::input(["label"=>"Date","type"=>"date","name"=>"date","value"=>"$mfgbom->date"]);
	echo Form::input(["label"=>"Remark","type"=>"textarea","name"=>"remark","value"=>"$mfgbom->remark"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
