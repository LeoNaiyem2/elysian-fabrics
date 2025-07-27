<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyStudent"]);
Html::link(["class"=>"btn btn-success", "route"=>"academystudent/create", "text"=>"Create AcademyStudent"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyStudent::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
