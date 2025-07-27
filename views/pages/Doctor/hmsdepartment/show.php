<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Department"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsdepartment", "text"=>"Manage Department"]);
echo HmsDepartment::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
