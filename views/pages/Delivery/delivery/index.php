<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage Delivery"]);
Html::link(["class"=>"btn btn-success", "route"=>"delivery/create", "text"=>"Create Delivery"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo Delivery::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
