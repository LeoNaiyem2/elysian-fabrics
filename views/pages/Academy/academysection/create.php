<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create AcademySection"]);
Html::link(["class"=>"btn btn-success", "route"=>"academysection", "text"=>"Manage AcademySection"]);
echo Form::open(["route"=>"academysection/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
