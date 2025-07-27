<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademyAdmission"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyadmission", "text"=>"Manage AcademyAdmission"]);
echo AcademyAdmission::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
