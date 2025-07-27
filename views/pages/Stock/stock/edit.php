<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit Stock"]);
Html::link(["class"=>"btn btn-success", "route"=>"stock", "text"=>"Manage Stock"]);
echo Form::open(["route"=>"stock/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$stock->id"]);
	echo Form::input(["label"=>"Product","name"=>"product_id","table"=>"products","value"=>"$stock->product_id"]);
	echo Form::input(["label"=>"Qty","type"=>"text","name"=>"qty","value"=>"$stock->qty"]);
	echo Form::input(["label"=>"Transaction Type","name"=>"transaction_type_id","table"=>"transaction_types","value"=>"$stock->transaction_type_id"]);
	echo Form::input(["label"=>"Remark","type"=>"textarea","name"=>"remark","value"=>"$stock->remark"]);
	echo Form::input(["label"=>"Warehouse","name"=>"warehouse_id","table"=>"warehouses","value"=>"$stock->warehouse_id"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
