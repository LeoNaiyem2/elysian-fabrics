<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage Department"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo HmsDepartment::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
