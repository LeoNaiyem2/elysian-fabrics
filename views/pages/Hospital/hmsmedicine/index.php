<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage HmsMedicine"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsmedicine/create", "text"=>"Create HmsMedicine"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo HmsMedicine::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
