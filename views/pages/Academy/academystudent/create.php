<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create AcademyStudent"]);
Html::link(["class"=>"btn btn-success", "route"=>"academystudent", "text"=>"Manage AcademyStudent"]);
echo Form::open(["route"=>"academystudent/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Fathers Name","type"=>"text","name"=>"fathers_name"]);
	echo Form::input(["label"=>"Mothers Name","type"=>"text","name"=>"mothers_name"]);
	echo Form::input(["label"=>"Academy Batch","name"=>"academy_batch_id","table"=>"academy_batches"]);
	echo Form::input(["label"=>"Dob","type"=>"text","name"=>"dob"]);
	echo Form::input(["label"=>"Photo","type"=>"file","name"=>"photo"]);
	echo Form::input(["label"=>"Contact No","type"=>"text","name"=>"contact_no"]);
	echo Form::input(["label"=>"Address","type"=>"textarea","name"=>"address"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
