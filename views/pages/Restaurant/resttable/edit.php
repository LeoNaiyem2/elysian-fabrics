<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit RestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"resttable", "text"=>"Manage RestTable"]);
echo Form::open(["route"=>"resttable/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$resttable->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$resttable->name"]);
	echo Form::input(["label"=>"Status","type"=>"text","name"=>"status","value"=>"$resttable->status"]);
	echo Form::input(["label"=>"Photo","type"=>"file","name"=>"photo","value"=>$resttable->photo]);
	echo Form::input(["label"=>"Seats","type"=>"text","name"=>"seats","value"=>"$resttable->seats"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
