<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit AcademyAdmission"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyadmission", "text"=>"Manage AcademyAdmission"]);
echo Form::open(["route"=>"academyadmission/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$academyadmission->id"]);
	echo Form::input(["label"=>"Academy Student","name"=>"academy_student_id","table"=>"academy_students","value"=>"$academyadmission->academy_student_id"]);
	echo Form::input(["label"=>"Academy Batch","name"=>"academy_batch_id","table"=>"academy_batchs","value"=>"$academyadmission->academy_batch_id"]);
	echo Form::input(["label"=>"Academy Section","name"=>"academy_section_id","table"=>"academy_sections","value"=>"$academyadmission->academy_section_id"]);
	echo Form::input(["label"=>"Roll","type"=>"text","name"=>"roll","value"=>"$academyadmission->roll"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
