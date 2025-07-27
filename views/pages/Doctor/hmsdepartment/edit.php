<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit Department"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsdepartment", "text"=>"Manage HmsDepartment"]);
echo Form::open(["route"=>"hmsdepartment/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$hmsdepartment->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$hmsdepartment->name"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
