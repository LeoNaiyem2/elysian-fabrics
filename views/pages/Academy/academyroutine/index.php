<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyRoutine"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyroutine/create", "text"=>"Create AcademyRoutine"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyRoutine::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
