<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show RestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"resttable", "text"=>"Manage RestTable"]);
echo RestTable::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
