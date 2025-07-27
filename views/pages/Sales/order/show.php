<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Order"]);
Html::link(["class"=>"btn btn-success", "route"=>"order", "text"=>"Manage Order"]);
echo Order::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
