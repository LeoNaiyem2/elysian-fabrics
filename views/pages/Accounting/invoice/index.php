<?php
Page::open();
 Row::open();
  Col::open();
   Card::open();
      // Doc::open(["name"=>"create_money_receipt"]);
      $page=isset($_GET["page"])?$_GET["page"]:1;
     echo Invoice::html_table($page);

     Card::close();
  Col::close();
 Row::close();
Page::close();

?>