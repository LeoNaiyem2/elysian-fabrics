<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Supplier"]);
Html::link(["class"=>"btn btn-success", "route"=>"supplier", "text"=>"Manage Supplier"]);
echo Supplier::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
