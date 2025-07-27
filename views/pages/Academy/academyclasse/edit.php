<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit AcademyClasse"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyclasse", "text"=>"Manage AcademyClasse"]);
echo Form::open(["route"=>"academyclasse/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$academyclasse->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$academyclasse->name"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
