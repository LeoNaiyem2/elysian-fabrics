<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create AcademyPeriod"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyperiod", "text"=>"Manage AcademyPeriod"]);
echo Form::open(["route"=>"academyperiod/save"]);
	echo Form::input(["label"=>"Name","type"=>"text","name"=>"name"]);
	echo Form::input(["label"=>"Time","type"=>"text","name"=>"time"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
