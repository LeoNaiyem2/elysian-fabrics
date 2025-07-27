<?php
echo Page::title(["title"=>"Show Contact"]);
echo Page::body_open();
echo Html::link(["class"=>"btn btn-success", "route"=>"contact", "text"=>"Manage Contact"]);
echo Page::context_open();
echo Contact::html_row_details($id);
echo Page::context_close();
echo Page::body_close();
