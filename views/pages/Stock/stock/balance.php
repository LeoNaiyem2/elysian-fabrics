<?php
Page::open();
Row::open();
Col::open();
Card::open(["title" => "View Stock Balance"]);
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
echo Stock::balance($page, 10);

Card::close();
Col::close();
Row::close();
Page::close();
?>