<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show AcademyRoutine"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyroutine", "text"=>"Manage AcademyRoutine"]);
echo AcademyRoutine::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
