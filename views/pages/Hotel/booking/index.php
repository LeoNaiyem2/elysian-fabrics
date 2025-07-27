<?php
echo Page::title(["title"=>"Manage Booking"]);
echo Page::body_open();
echo Page::context_open();
$page = isset($_GET["page"]) ?$_GET["page"]:1;
//echo Booking::html_table($page,10);
echo Towhid::about();
echo "<br>";
echo Towhid::link("VCampus","https://vcampusbd.com");
echo "<br>";

 echo Towhid::circle(["color"=>"red","value"=>"Circle"]);
 echo Towhid::circle(["color"=>"green","value"=>"Circle"]);
 echo Towhid::circle(["color"=>"blue","value"=>"Circle"]);

echo Towhid::square(["color"=>"purple","value"=>"Purple"]);
echo Towhid::square(["color"=>"red","value"=>"Red"]);

echo Towhid::square(["color"=>"red","value"=>"Red"]);
//blackcow
echo Towhid::square(["color"=>"red","value"=>"Red"]);
echo Towhid::item(["src"=>"img/blackcow.jpg","name"=>"Cow","description"=>"NA"]);

echo Page::context_close();
echo Page::body_close();

