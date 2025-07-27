<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademySection"]);
Html::link(["class"=>"btn btn-success", "route"=>"academysection", "text"=>"Manage AcademySection"]);
echo AcademySection::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
