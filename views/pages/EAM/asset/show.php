<?php
echo Page::title(["title"=>"Show Asset"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-success", "route"=>"asset", "text"=>"Manage Asset"]);
echo Page::context_open();
echo Asset::html_row_details($id);
echo Page::context_close();
echo Page::body_close();
