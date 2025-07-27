<?php
Page::open();
Row::open();
Col::open();
Card::open(["title" => "Manage Stock"]);
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
echo Stock::html_table($page, 10);
Card::close();
Col::close();
Row::close();
Page::close();
