<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage Order"]);
Html::link(["class"=>"btn btn-success", "route"=>"order/create", "text"=>"Create Order"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo Order::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
