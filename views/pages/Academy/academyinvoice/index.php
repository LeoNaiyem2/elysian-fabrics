<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Manage AcademyInvoice"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyinvoice/create", "text"=>"Create AcademyInvoice"]);
$page = isset($_GET["page"]) ?$_GET["page"]:1;
echo AcademyInvoice::html_table($page,10);
Card::close();
Col::close();
Row::close();
Page::close();
