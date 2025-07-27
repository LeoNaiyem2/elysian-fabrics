<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create TestTable"]);
Html::link(["class"=>"btn btn-success", "route"=>"testtable", "text"=>"Manage TestTable"]);
echo Form::open(["route"=>"testtable/save"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
