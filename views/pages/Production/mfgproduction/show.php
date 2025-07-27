<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Show MfgProduction"]);
Html::link(["class"=>"btn btn-success", "route"=>"mfgproduction", "text"=>"Manage MfgProduction"]);
echo MfgProduction::html_row_details($id);
Card::close();
Col::close();
Row::close();
Page::close();
