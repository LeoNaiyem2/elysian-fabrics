<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show HmsPatient"]);
Html::link(["class"=>"btn btn-success", "route"=>"hmspatient", "text"=>"Manage HmsPatient"]);
echo HmsPatient::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
