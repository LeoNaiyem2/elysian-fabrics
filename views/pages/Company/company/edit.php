<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit Company"]);
Html::link(["class"=>"btn btn-success", "route"=>"company", "text"=>"Manage Company"]);
echo Form::open(["route"=>"company/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$company->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$company->name"]);
	echo Form::input(["label"=>"Mobile","type"=>"text","name"=>"mobile","value"=>"$company->mobile"]);
	echo Form::input(["label"=>"Bin","type"=>"text","name"=>"bin","value"=>"$company->bin"]);
	echo Form::input(["label"=>"Email","type"=>"text","name"=>"email","value"=>"$company->email"]);
	echo Form::input(["label"=>"Website","type"=>"text","name"=>"website","value"=>"$company->website"]);
	echo Form::input(["label"=>"City","type"=>"text","name"=>"city","value"=>"$company->city"]);
	echo Form::input(["label"=>"Area","type"=>"text","name"=>"area","value"=>"$company->area"]);
	echo Form::input(["label"=>"Street Address","type"=>"text","name"=>"street_address","value"=>"$company->street_address"]);
	echo Form::input(["label"=>"Post Code","type"=>"text","name"=>"post_code","value"=>"$company->post_code"]);
	echo Form::input(["label"=>"Inactive","type"=>"checkbox","name"=>"inactive","value"=>"$company->inactive","checked"=>$company->inactive?"checked":""]);
	echo Form::input(["label"=>"Logo","type"=>"file","name"=>"logo","value"=>$company->logo]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
