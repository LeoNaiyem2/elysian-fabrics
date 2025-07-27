<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show HmsMedicine"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsmedicine", "text"=>"Manage HmsMedicine"]);
echo HmsMedicine::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
