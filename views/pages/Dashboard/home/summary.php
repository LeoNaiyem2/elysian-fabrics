<?php
Page::open();
Row::open();
Col::open();
Card::open(["title" => "Summary"]);

Doc::open(["name" => "summary"]);
Card::close();
Col::close();
Row::close();
Page::close();
