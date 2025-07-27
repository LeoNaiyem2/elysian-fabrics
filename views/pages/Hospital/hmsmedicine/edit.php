<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit HmsMedicine"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsmedicine", "text"=>"Manage HmsMedicine"]);
echo Form::open(["route"=>"hmsmedicine/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$hmsmedicine->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$hmsmedicine->name"]);
	echo Form::input(["label"=>"Hms Medicine Category","name"=>"hms_medicine_category_id","table"=>"hms_medicine_categories","value"=>"$hmsmedicine->hms_medicine_category_id"]);
	echo Form::input(["label"=>"Hms Medicine Type","name"=>"hms_medicine_type_id","table"=>"hms_medicine_types","value"=>"$hmsmedicine->hms_medicine_type_id"]);
	echo Form::input(["label"=>"Generic Name","type"=>"text","name"=>"generic_name","value"=>"$hmsmedicine->generic_name"]);
	echo Form::input(["label"=>"Description","type"=>"textarea","name"=>"description","value"=>"$hmsmedicine->description"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
