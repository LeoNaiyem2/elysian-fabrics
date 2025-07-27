<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit EcomCoupon"]);
Html::link(["class"=>"btn btn-success", "route"=>"ecomcoupon", "text"=>"Manage EcomCoupon"]);
echo Form::open(["route"=>"ecomcoupon/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$ecomcoupon->id"]);
	echo Form::input(["label"=>"Coupon","type"=>"text","name"=>"coupon","value"=>"$ecomcoupon->coupon"]);
	echo Form::input(["label"=>"Percent B2b","type"=>"text","name"=>"percent_b2b","value"=>"$ecomcoupon->percent_b2b"]);
	echo Form::input(["label"=>"Percent B2c","type"=>"text","name"=>"percent_b2c","value"=>"$ecomcoupon->percent_b2c"]);
	echo Form::input(["label"=>"Percent M","type"=>"text","name"=>"percent_m","value"=>"$ecomcoupon->percent_m"]);
	echo Form::input(["label"=>"Start Date","type"=>"date","name"=>"start_date","value"=>"$ecomcoupon->start_date"]);
	echo Form::input(["label"=>"End Date","type"=>"date","name"=>"end_date","value"=>"$ecomcoupon->end_date"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
