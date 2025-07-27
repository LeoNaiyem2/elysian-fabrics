<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show TestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"testtable", "text"=>"Manage TestTable"]);
echo TestTable::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
