<?php
Page::open();
Row::open();
 Col::open();
  Html::link(["class"=>"btn btn-success", "route"=>"supplier/create", "text"=>"Create Supplier"]);
 Col::close();
Row::close();
Row::open();
Col::open();
Card::open(["title"=>"Manage Supplier"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo Supplier::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
