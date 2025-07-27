<?php
class Father extends Model{
    function __construct(){
        $this->name= "";
    }
    public function getName(){
        return $this->name;
    }
}

?>