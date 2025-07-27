<?php
 class SchoolController extends Controller{
   
   public function __construct(){
      $this->module="Tutorial";
	}
    public function index(){
      $this->view();
    }

    public function contact(){
      $this->view();
    }
 }
?>