<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage TestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"testtable/create", "text"=>"Create TestTable"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo TestTable::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
