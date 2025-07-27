<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create EcomCoupon"]);
Html::link(["class"=>"btn btn-success", "route"=>"ecomcoupon", "text"=>"Manage EcomCoupon"]);
echo Form::open(["route"=>"ecomcoupon/save"]);
	echo Form::input(["label"=>"Coupon","type"=>"text","name"=>"coupon"]);
	echo Form::input(["label"=>"Percent B2b","type"=>"text","name"=>"percent_b2b"]);
	echo Form::input(["label"=>"Percent B2c","type"=>"text","name"=>"percent_b2c"]);
	echo Form::input(["label"=>"Percent M","type"=>"text","name"=>"percent_m"]);
	echo Form::input(["label"=>"Start Date","type"=>"date","name"=>"start_date"]);
	echo Form::input(["label"=>"End Date","type"=>"date","name"=>"end_date"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
