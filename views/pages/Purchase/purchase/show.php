<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Purchase"]);
Html::link(["class"=>"btn btn-success", "route"=>"purchase", "text"=>"Manage Purchase"]);
echo Purchase::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
