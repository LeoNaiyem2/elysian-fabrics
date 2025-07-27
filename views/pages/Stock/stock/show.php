<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Stock"]);
Html::link(["class"=>"btn btn-success", "route"=>"stock", "text"=>"Manage Stock"]);
echo Stock::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
