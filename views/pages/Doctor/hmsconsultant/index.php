<?php
Page::open();
Row::open();
 Col::open();
 Html::link(["class"=>"btn btn-success", "route"=>"hmsconsultant/create", "text"=>"Create HmsConsultant"]);
 Col::close();
Row::close();
Row::open();
Col::open();
Card::open(["title"=>"Manage HmsConsultant"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo HmsConsultant::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
