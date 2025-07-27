<?php
//Remote

define("SERVER", "localhost");
define("USER", "naiyem");
define("DATABASE", "wdpf63_naiyem");
define("PASSWORD", "8430@;;");

//Local

// define("SERVER","localhost");
// define("USER","root");
// define("DATABASE","test");
// define("PASSWORD","");

$db = new mysqli(SERVER, USER, PASSWORD, DATABASE);
$tx = "core_";


?>