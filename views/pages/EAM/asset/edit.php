<?php
echo Page::title(["title"=>"Edit Asset"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-success", "route"=>"asset", "text"=>"Manage Asset"]);
echo Page::context_open();
echo Form::open(["route"=>"asset/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$asset->id"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name","value"=>"$asset->name"]);
	echo Form::input(["label"=>"Price","type"=>"text","name"=>"price","value"=>"$asset->price"]);
	echo Form::input(["label"=>"Purchased At","type"=>"date","name"=>"purchased_at","value"=>"$asset->purchased_at"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
echo Page::context_close();
echo Page::body_close();
