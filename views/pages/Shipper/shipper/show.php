<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Shipper"]);
Html::link(["class"=>"btn btn-success", "route"=>"shipper", "text"=>"Manage Shipper"]);
echo Shipper::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
