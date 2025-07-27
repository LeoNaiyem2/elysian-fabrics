<?php
class PrescriptionController extends Controller{
	public function __construct(){
		$this->module="Patient";
	}
	public function index(){
		$this->view();
	}
	public function create($id){       
	 
		$this->view(HmsPatient::find($id));
	}

}