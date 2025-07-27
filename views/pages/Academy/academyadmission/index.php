<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyAdmission"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyadmission/create", "text"=>"Create AcademyAdmission"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyAdmission::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
