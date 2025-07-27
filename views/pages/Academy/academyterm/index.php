<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyTerm"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyterm/create", "text"=>"Create AcademyTerm"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyTerm::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
