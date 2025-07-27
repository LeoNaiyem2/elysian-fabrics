<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit HmsPatient"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmspatient", "text"=>"Manage HmsPatient"]);
echo Form::open(["route"=>"hmspatient/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$hmspatient->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$hmspatient->name"]);
	echo Form::input(["label"=>"Mobile","type"=>"text","name"=>"mobile","value"=>"$hmspatient->mobile"]);
	echo Form::input(["label"=>"Dob","type"=>"text","name"=>"dob","value"=>"$hmspatient->dob"]);
	echo Form::input(["label"=>"Mob Ext","type"=>"text","name"=>"mob_ext","value"=>"$hmspatient->mob_ext"]);
	echo Form::input(["label"=>"Male","type"=>"radio","name"=>"gender","value"=>"$hmspatient->gender","checked"=>$hmspatient->gender?"checked":""]);
	echo Form::input(["label"=>"Female","type"=>"radio","name"=>"gender","value"=>"$hmspatient->gender","checked"=>$hmspatient->gender?"checked":""]);
	echo Form::input(["label"=>"Profession","type"=>"text","name"=>"profession","value"=>"$hmspatient->profession"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
