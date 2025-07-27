<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show HmsConsultant"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmsconsultant", "text"=>"Manage HmsConsultant"]);
echo HmsConsultant::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
