<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit TestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"testtable", "text"=>"Manage TestTable"]);
echo Form::open(["route"=>"testtable/update"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
