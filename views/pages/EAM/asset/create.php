<?php
echo Page::title(["title"=>"Create Asset"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-success", "route"=>"asset", "text"=>"Manage Asset"]);
echo Page::context_open();
echo Form::open(["route"=>"asset/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Price","type"=>"text","name"=>"price"]);
	echo Form::input(["label"=>"Purchased At","type"=>"date","name"=>"purchased_at"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
echo Page::context_close();
echo Page::body_close();
