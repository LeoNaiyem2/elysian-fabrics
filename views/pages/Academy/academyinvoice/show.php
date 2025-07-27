<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademyInvoice"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyinvoice", "text"=>"Manage AcademyInvoice"]);
echo AcademyInvoice::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
