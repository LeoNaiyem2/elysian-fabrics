<?php
Page::open();
Row::open();
Col::open();
Card::open(["title" => "Manage MfgBom"]);
Html::link(["class" => "btn btn-success", "route" => "mfgbom/create", "text" => "Create MfgBom"]);
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
echo MfgBom::html_table($page, 10);
// Doc::open(["name" => "bom"]);
Card::close();
Col::close();
Row::close();
Page::close();
