<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage RestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"resttable/create", "text"=>"Create RestTable"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo RestTable::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
