<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademyBatche"]);
Html::link(["class"=>"btn btn-success", "route"=>"academybatche", "text"=>"Manage AcademyBatche"]);
echo AcademyBatche::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
