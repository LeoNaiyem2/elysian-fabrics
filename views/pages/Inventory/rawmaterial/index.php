<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage RawMaterial"]);
Html::link(["class"=>"btn btn-success", "route"=>"rawmaterial/create", "text"=>"Create RawMaterial"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo RawMaterial::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
