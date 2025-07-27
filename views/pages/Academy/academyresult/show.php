<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademyResult"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyresult", "text"=>"Manage AcademyResult"]);
echo AcademyResult::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
