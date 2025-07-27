<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademyTerm"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyterm", "text"=>"Manage AcademyTerm"]);
echo AcademyTerm::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
