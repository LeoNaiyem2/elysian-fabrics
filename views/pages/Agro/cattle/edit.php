<?php
echo Page::title(["title"=>"Edit Cattle"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-success", "route"=>"cattle", "text"=>"Manage Cattle"]);
echo Page::context_open();
echo Form::open(["route"=>"cattle/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$cattle->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$cattle->name"]);
	echo Form::input(["label"=>"Region","type"=>"text","name"=>"region","value"=>"$cattle->region"]);
	echo Form::input(["label"=>"Dob","type"=>"text","name"=>"dob","value"=>"$cattle->dob"]);
	echo Form::input(["label"=>"Color","type"=>"text","name"=>"color","value"=>"$cattle->color"]);
	echo Form::input(["label"=>"Description","type"=>"textarea","name"=>"description","value"=>"$cattle->description"]);
	echo Form::input(["label"=>"Photo","type"=>"file","name"=>"photo","value"=>$cattle->photo]);
	echo Form::input(["label"=>"Male","type"=>"radio","name"=>"gender","value"=>"$cattle->gender","checked"=>$cattle->gender?"checked":""]);
	echo Form::input(["label"=>"Female","type"=>"radio","name"=>"gender","value"=>"$cattle->gender","checked"=>$cattle->gender?"checked":""]);
	echo Form::input(["label"=>"Cattle Category","name"=>"cattle_category_id","table"=>"cattle_categories","value"=>"$cattle->cattle_category_id"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
echo Page::context_close();
echo Page::body_close();
