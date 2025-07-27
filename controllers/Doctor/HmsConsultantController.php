<?php
class HmsConsultantController extends Controller{
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
	if(!preg_match("/^[\s\S]+$/",$data["hms_department_id"])){
		$errors["hms_department_id"]="Invalid hms_department_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data["designation"])){
		$errors["designation"]="Invalid designation";
	}

*/
		if(count($errors)==0){
			$hmsconsultant=new HmsConsultant();
		$hmsconsultant->name=$data["name"];
		$hmsconsultant->hms_department_id=$data["hms_department_id"];
		$hmsconsultant->designation=$data["designation"];

			$hmsconsultant->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		view("Doctor",HmsConsultant::find($id));
}
public function update($data,$file){
	if(isset($data["update"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data["hms_department_id"])){
		$errors["hms_department_id"]="Invalid hms_department_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data["designation"])){
		$errors["designation"]="Invalid designation";
	}

*/
		if(count($errors)==0){
			$hmsconsultant=new HmsConsultant();
			$hmsconsultant->id=$data["id"];
		$hmsconsultant->name=$data["name"];
		$hmsconsultant->hms_department_id=$data["hms_department_id"];
		$hmsconsultant->designation=$data["designation"];

		$hmsconsultant->update();
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
		HmsConsultant::delete($id);
		redirect();
	}
	public function show($id){
		view("Doctor",HmsConsultant::find($id));
	}
}
?>
