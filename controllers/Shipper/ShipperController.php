<?php
class ShipperController extends Controller{
	public function __construct(){
		$this->module="Shipper";
	}
	public function index(){
		$this->view();
	}
	public function create(){
		$this->view();
	}
public function save($data,$file){
	global $now;
	if(isset($data->create)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtContactPerson"])){
		$errors["contact_person"]="Invalid contact_person";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtContactNo"])){
		$errors["contact_no"]="Invalid contact_no";
	}

*/
		if(count($errors)==0){
			$shipper=new Shipper();
		$shipper->name=$data->name;
		$shipper->contact_person=$data->contact_person;
		$shipper->contact_no=$data->contact_no;

			$shipper->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(Shipper::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtContactPerson"])){
		$errors["contact_person"]="Invalid contact_person";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtContactNo"])){
		$errors["contact_no"]="Invalid contact_no";
	}

*/
		if(count($errors)==0){
			$shipper=new Shipper();
			$shipper->id=$data->id;
		$shipper->name=$data->name;
		$shipper->contact_person=$data->contact_person;
		$shipper->contact_no=$data->contact_no;

		$shipper->update();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
	public function confirm($id){
		$this->view();
	}
	public function delete($id){
		Shipper::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(Shipper::find($id));
	}
}
?>
