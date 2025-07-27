<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyPeriod"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyperiod/create", "text"=>"Create AcademyPeriod"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyPeriod::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
