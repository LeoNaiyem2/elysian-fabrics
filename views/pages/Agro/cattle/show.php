<?php
//echo Page::title(["title"=>"Show Cattle"]);
echo Page::open();
echo Row::open(["spacing"=>"mt-3"]);
echo Col::open(["col"=>"6"]);
echo Card::open();
echo Cattle::html_row_details($id);
echo Card::close();
echo Col::close();
echo Row::close();
echo Page::close();
