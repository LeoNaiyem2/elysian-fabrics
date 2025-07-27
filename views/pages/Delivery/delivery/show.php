<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Delivery"]);
Html::link(["class"=>"btn btn-success", "route"=>"delivery", "text"=>"Manage Delivery"]);
echo Delivery::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
