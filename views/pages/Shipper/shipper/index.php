<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage Shipper"]);
Html::link(["class"=>"btn btn-success", "route"=>"shipper/create", "text"=>"Create Shipper"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo Shipper::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
