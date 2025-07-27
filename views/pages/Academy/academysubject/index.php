<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademySubject"]);
Html::link(["class"=>"btn btn-success", "route"=>"academysubject/create", "text"=>"Create AcademySubject"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademySubject::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
