<?php

class InvoiceController extends Controller{

  function __construct(){
    $this->module="Accounting";
  }
  public function index(){
    $this->view();
  }

 
  public function create(){
      $this->view();
  }

  public function save(){

  }

  public function edit($id){
    $this->view(Invoice::find($id));
  }

  public function update(){
     
  }

  public function confirm($id){
       $this->view();
  }

  public function delete($id){
    Invoice::delete($id);
		redirect();
  }


  public function show($id){
		$this->view(Invoice::find($id));
	}


}

?>