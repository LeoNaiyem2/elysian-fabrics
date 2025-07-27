<?php
 class TowhidController extends Controller{
   public function __construct(){
      $this->module="Tutorial";
	}
    public function index(){
        $this->view();
    }

    public function contact(){
      $this->view();
    }

    public function father(){
      $father=new Father();
      echo $father->getName();

    }
 }
?>