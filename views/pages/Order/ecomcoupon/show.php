<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show EcomCoupon"]);
Html::link(["class"=>"btn btn-success", "route"=>"ecomcoupon", "text"=>"Manage EcomCoupon"]);
echo EcomCoupon::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
