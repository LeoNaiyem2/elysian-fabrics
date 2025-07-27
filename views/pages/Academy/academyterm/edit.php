<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit AcademyTerm"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyterm", "text"=>"Manage AcademyTerm"]);
echo Form::open(["route"=>"academyterm/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$academyterm->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$academyterm->name"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
