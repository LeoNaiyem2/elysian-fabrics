<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit HmsPrescription"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsprescription", "text"=>"Manage HmsPrescription"]);
echo Form::open(["route"=>"hmsprescription/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$hmsprescription->id"]);
	echo Form::input(["label"=>"Patient","name"=>"patient_id","table"=>"patients","value"=>"$hmsprescription->patient_id"]);
	echo Form::input(["label"=>"Consultant","name"=>"consultant_id","table"=>"consultants","value"=>"$hmsprescription->consultant_id"]);
	echo Form::input(["label"=>"Cc","type"=>"textarea","name"=>"cc","value"=>"$hmsprescription->cc"]);
	echo Form::input(["label"=>"Rf","type"=>"textarea","name"=>"rf","value"=>"$hmsprescription->rf"]);
	echo Form::input(["label"=>"Investigation","type"=>"textarea","name"=>"investigation","value"=>"$hmsprescription->investigation"]);
	echo Form::input(["label"=>"Advice","type"=>"textarea","name"=>"advice","value"=>"$hmsprescription->advice"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
