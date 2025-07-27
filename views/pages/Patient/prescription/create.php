<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create Prescription"]);
 
 Doc::open(["name"=>"prescription","patient"=>$prescription]);
 
Card::close();
Col::close();
Row::close();
Page::close();
