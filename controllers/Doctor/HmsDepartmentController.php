<?php
class HmsDepartmentController extends Controller{
	public function __construct(){
	}
	public function index(){
		view("Doctor");
	}
	public function create(){
		view("Doctor");
	}
public function save($data,$file){
	if(isset($data["create"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}

*/
		if(count($errors)==0){
			$hmsdepartment=new HmsDepartment();
		$hmsdepartment->name=$data["name"];

			$hmsdepartment->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		view("Doctor",HmsDepartment::find($id));
}
public function update($data,$file){
	if(isset($data["update"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}

*/
		if(count($errors)==0){
			$hmsdepartment=new HmsDepartment();
			$hmsdepartment->id=$data["id"];
		$hmsdepartment->name=$data["name"];

		$hmsdepartment->update();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
	public function confirm($id){
		view("Doctor");
	}
	public function delete($id){
		HmsDepartment::delete($id);
		redirect();
	}
	public function show($id){
		view("Doctor",HmsDepartment::find($id));
	}
}
?>
