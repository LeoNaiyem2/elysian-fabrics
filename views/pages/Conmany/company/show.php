<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show Company"]);
Html::link(["class"=>"btn btn-success", "route"=>"company", "text"=>"Manage Company"]);
echo Company::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
