<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create HmsMedicine"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsmedicine", "text"=>"Manage HmsMedicine"]);
echo Form::open(["route"=>"hmsmedicine/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Hms Medicine Category","name"=>"hms_medicine_category_id","table"=>"hms_medicine_categories"]);
	echo Form::input(["label"=>"Hms Medicine Type","name"=>"hms_medicine_type_id","table"=>"hms_medicine_types"]);
	echo Form::input(["label"=>"Generic Name","type"=>"text","name"=>"generic_name"]);
	echo Form::input(["label"=>"Description","type"=>"textarea","name"=>"description"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
