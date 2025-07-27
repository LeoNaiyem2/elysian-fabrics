<?php
class HmsPrescriptionController extends Controller{
	public function __construct(){
		$this->module="OPD";
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
	if(!preg_match("/^[\s\S]+$/",$data->patient_id)){
		$errors["patient_id"]="Invalid patient_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->consultant_id)){
		$errors["consultant_id"]="Invalid consultant_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->cc)){
		$errors["cc"]="Invalid cc";
	}
	if(!preg_match("/^[\s\S]+$/",$data->rf)){
		$errors["rf"]="Invalid rf";
	}
	if(!preg_match("/^[\s\S]+$/",$data->investigation)){
		$errors["investigation"]="Invalid investigation";
	}
	if(!preg_match("/^[\s\S]+$/",$data->advice)){
		$errors["advice"]="Invalid advice";
	}

*/
		if(count($errors)==0){
			$hmsprescription=new HmsPrescription();
		$hmsprescription->patient_id=$data->patient_id;
		$hmsprescription->consultant_id=$data->consultant_id;
		$hmsprescription->cc=$data->cc;
		$hmsprescription->rf=$data->rf;
		$hmsprescription->investigation=$data->investigation;
		$hmsprescription->advice=$data->advice;

			$hmsprescription->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(HmsPrescription::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data->patient_id)){
		$errors["patient_id"]="Invalid patient_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->consultant_id)){
		$errors["consultant_id"]="Invalid consultant_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->cc)){
		$errors["cc"]="Invalid cc";
	}
	if(!preg_match("/^[\s\S]+$/",$data->rf)){
		$errors["rf"]="Invalid rf";
	}
	if(!preg_match("/^[\s\S]+$/",$data->investigation)){
		$errors["investigation"]="Invalid investigation";
	}
	if(!preg_match("/^[\s\S]+$/",$data->advice)){
		$errors["advice"]="Invalid advice";
	}

*/
		if(count($errors)==0){
			$hmsprescription=new HmsPrescription();
			$hmsprescription->id=$data->id;
		$hmsprescription->patient_id=$data->patient_id;
		$hmsprescription->consultant_id=$data->consultant_id;
		$hmsprescription->cc=$data->cc;
		$hmsprescription->rf=$data->rf;
		$hmsprescription->investigation=$data->investigation;
		$hmsprescription->advice=$data->advice;

		$hmsprescription->update();
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
		HmsPrescription::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(HmsPrescription::find($id));
	}
}
?>
