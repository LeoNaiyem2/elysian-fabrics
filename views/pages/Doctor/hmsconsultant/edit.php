<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit HmsConsultant"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsconsultant", "text"=>"Manage HmsConsultant"]);
echo Form::open(["route"=>"hmsconsultant/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$hmsconsultant->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$hmsconsultant->name"]);
	echo Form::input(["label"=>"Hms Department","name"=>"hms_department_id","table"=>"hms_departments","value"=>"$hmsconsultant->hms_department_id"]);
	echo Form::input(["label"=>"Designation","type"=>"textarea","name"=>"designation","value"=>"$hmsconsultant->designation"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
