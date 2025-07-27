<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage MfgProduction"]);
Html::link(["class"=>"btn btn-success", "route"=>"mfgproduction/create", "text"=>"Create MfgProduction"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo MfgProduction::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
