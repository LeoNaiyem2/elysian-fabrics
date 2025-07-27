<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show MfgBom"]);
Html::link(["class"=>"btn btn-success", "route"=>"mfgbom", "text"=>"Manage MfgBom"]);
echo MfgBom::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
