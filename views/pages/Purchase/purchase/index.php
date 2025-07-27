<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage Purchase"]);
Html::link(["class"=>"btn btn-success", "route"=>"purchase/create", "text"=>"Create Purchase"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo Purchase::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
