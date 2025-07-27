<?php
  Page::open();
  Row::open();
   Col::open(["col"=>"10"]);
     Card::open(["title"=>"Search Patient"]);   
     
     Form::text(["label"=>"Search","name"=>"search","placeholder"=>"Search..."]); 
     Form::color(["label"=>"Color","name"=>"color"]); 
 
      
      Card::close();
   Col::close();
  Row::close();
  Page::close();
?>