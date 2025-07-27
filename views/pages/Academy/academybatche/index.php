<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyBatche"]);
Html::link(["class"=>"btn btn-success", "route"=>"academybatche/create", "text"=>"Create AcademyBatche"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyBatche::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
