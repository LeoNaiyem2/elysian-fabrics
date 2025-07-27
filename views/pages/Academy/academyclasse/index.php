<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyClasse"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyclasse/create", "text"=>"Create AcademyClasse"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyClasse::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
