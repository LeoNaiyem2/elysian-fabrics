<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create Department"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsdepartment", "text"=>"Manage HmsDepartment"]);
echo Form::open(["route"=>"hmsdepartment/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
