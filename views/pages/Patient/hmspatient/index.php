<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage HmsPatient"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmspatient/create", "text"=>"Create HmsPatient"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo HmsPatient::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
