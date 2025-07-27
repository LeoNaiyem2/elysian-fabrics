<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyTeacher"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyteacher/create", "text"=>"Create AcademyTeacher"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyTeacher::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
