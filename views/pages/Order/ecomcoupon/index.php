<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage EcomCoupon"]);
Html::link(["class"=>"btn btn-success", "route"=>"ecomcoupon/create", "text"=>"Create EcomCoupon"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo EcomCoupon::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
