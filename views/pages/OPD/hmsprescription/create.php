<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create HmsPrescription"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsprescription", "text"=>"Manage HmsPrescription"]);
echo Form::open(["route"=>"hmsprescription/save"]);
	echo Form::input(["label"=>"Patient","name"=>"patient_id","table"=>"patients"]);
	echo Form::input(["label"=>"Consultant","name"=>"consultant_id","table"=>"consultants"]);
	echo Form::input(["label"=>"Cc","type"=>"textarea","name"=>"cc"]);
	echo Form::input(["label"=>"Rf","type"=>"textarea","name"=>"rf"]);
	echo Form::input(["label"=>"Investigation","type"=>"textarea","name"=>"investigation"]);
	echo Form::input(["label"=>"Advice","type"=>"textarea","name"=>"advice"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
