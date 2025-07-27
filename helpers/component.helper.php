<?php

function component($class,$file,$arg=[]){ 
  global $template,$sector,$base_url;

    ${strtolower($class)}=json_decode(json_encode($arg),FALSE);
    
    $path="views/components/$template/$class"; 
   if($class=="Widget" || $class=="Doc"){
    $path="views/components/$template/$class/$sector"; 
   }
  
  include("$path/{$file}.php");    
}

?>