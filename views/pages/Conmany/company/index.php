<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage Company"]);
Html::link(["class"=>"btn btn-success", "route"=>"company/create", "text"=>"Create Company"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo Company::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
