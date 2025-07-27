<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create AcademyClasse"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyclasse", "text"=>"Manage AcademyClasse"]);
echo Form::open(["route"=>"academyclasse/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
