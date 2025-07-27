<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create AcademyBatche"]);
Html::link(["class"=>"btn btn-success", "route"=>"academybatche", "text"=>"Manage AcademyBatche"]);
echo Form::open(["route"=>"academybatche/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Current Class","name"=>"current_class_id","table"=>"current_classs"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
