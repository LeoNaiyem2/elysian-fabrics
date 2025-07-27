<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create AcademyTeacher"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyteacher", "text"=>"Manage AcademyTeacher"]);
echo Form::open(["route"=>"academyteacher/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Contact No","type"=>"text","name"=>"contact_no"]);
	echo Form::input(["label"=>"Position","type"=>"text","name"=>"position"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
