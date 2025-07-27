<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage HmsPrescription"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsprescription/create", "text"=>"Create HmsPrescription"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo HmsPrescription::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
