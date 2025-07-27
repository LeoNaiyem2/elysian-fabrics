<?php
class HmsMedicineController extends Controller{
	public function __construct(){
		$this->module="Hospital";
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
	if(!preg_match("/^[\s\S]+$/",$data->hms_medicine_category_id)){
		$errors["hms_medicine_category_id"]="Invalid hms_medicine_category_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->hms_medicine_type_id)){
		$errors["hms_medicine_type_id"]="Invalid hms_medicine_type_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtGenericName"])){
		$errors["generic_name"]="Invalid generic_name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->description)){
		$errors["description"]="Invalid description";
	}

*/
		if(count($errors)==0){
			$hmsmedicine=new HmsMedicine();
		$hmsmedicine->name=$data->name;
		$hmsmedicine->hms_medicine_category_id=$data->hms_medicine_category_id;
		$hmsmedicine->hms_medicine_type_id=$data->hms_medicine_type_id;
		$hmsmedicine->generic_name=$data->generic_name;
		$hmsmedicine->description=$data->description;

			$hmsmedicine->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(HmsMedicine::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->hms_medicine_category_id)){
		$errors["hms_medicine_category_id"]="Invalid hms_medicine_category_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->hms_medicine_type_id)){
		$errors["hms_medicine_type_id"]="Invalid hms_medicine_type_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtGenericName"])){
		$errors["generic_name"]="Invalid generic_name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->description)){
		$errors["description"]="Invalid description";
	}

*/
		if(count($errors)==0){
			$hmsmedicine=new HmsMedicine();
			$hmsmedicine->id=$data->id;
		$hmsmedicine->name=$data->name;
		$hmsmedicine->hms_medicine_category_id=$data->hms_medicine_category_id;
		$hmsmedicine->hms_medicine_type_id=$data->hms_medicine_type_id;
		$hmsmedicine->generic_name=$data->generic_name;
		$hmsmedicine->description=$data->description;

		$hmsmedicine->update();
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
		HmsMedicine::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(HmsMedicine::find($id));
	}
}
?>
