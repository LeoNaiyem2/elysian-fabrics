<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create RestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"resttable", "text"=>"Manage RestTable"]);
echo Form::open(["route"=>"resttable/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Status","type"=>"text","name"=>"status"]);
	echo Form::input(["label"=>"Photo","type"=>"file","name"=>"photo"]);
	echo Form::input(["label"=>"Seats","type"=>"text","name"=>"seats"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
