<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit AcademyBatche"]);
Html::link(["class"=>"btn btn-success", "route"=>"academybatche", "text"=>"Manage AcademyBatche"]);
echo Form::open(["route"=>"academybatche/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$academybatche->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$academybatche->name"]);
	echo Form::input(["label"=>"Current Class","name"=>"current_class_id","table"=>"current_classs","value"=>"$academybatche->current_class_id"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
