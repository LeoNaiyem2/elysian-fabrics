<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show RawMaterial"]);
Html::link(["class"=>"btn btn-success", "route"=>"rawmaterial", "text"=>"Manage RawMaterial"]);
echo RawMaterial::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
