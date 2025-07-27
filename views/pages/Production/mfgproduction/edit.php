<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit MfgProduction"]);
Html::link(["class"=>"btn btn-success", "route"=>"mfgproduction", "text"=>"Manage MfgProduction"]);
echo Form::open(["route"=>"mfgproduction/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$mfgproduction->id"]);
	echo Form::input(["label"=>"Production Datetime","type"=>"date","name"=>"production_datetime","value"=>"$mfgproduction->production_datetime"]);
	echo Form::input(["label"=>"Bom","name"=>"bom_id","table"=>"boms","value"=>"$mfgproduction->bom_id"]);
	echo Form::input(["label"=>"Qty","type"=>"text","name"=>"qty","value"=>"$mfgproduction->qty"]);
	echo Form::input(["label"=>"Labor Cost","type"=>"text","name"=>"labor_cost","value"=>"$mfgproduction->labor_cost"]);
	echo Form::input(["label"=>"Manager","name"=>"manager_id","table"=>"managers","value"=>"$mfgproduction->manager_id"]);
	echo Form::input(["label"=>"Total Cost","type"=>"text","name"=>"total_cost","value"=>"$mfgproduction->total_cost"]);
	echo Form::input(["label"=>"Product","name"=>"product_id","table"=>"products","value"=>"$mfgproduction->product_id"]);
	echo Form::input(["label"=>"Uom","name"=>"uom_id","table"=>"uom","value"=>"$mfgproduction->uom_id"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
