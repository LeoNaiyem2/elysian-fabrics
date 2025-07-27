<?php
class Doc{    
    public static function open($arg=[]){  
        component(static::class,$arg["name"],$arg); 
   }
}
