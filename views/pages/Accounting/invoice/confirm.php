<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Confirm Delete"]);
Form::open(["route"=>"invoice/delete/$id"]);

echo Invoice::html_row_details($id);
Form::input(["name"=>"id", "type"=>"hidden", "value"=>$id]);
Form::input(["name"=>"delete", "class"=>"btn btn-danger", "value"=>"Delete", "type"=>"submit"]);
Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
