<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademyStudent"]);
Html::link(["class"=>"btn btn-success", "route"=>"academystudent", "text"=>"Manage AcademyStudent"]);
echo AcademyStudent::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
