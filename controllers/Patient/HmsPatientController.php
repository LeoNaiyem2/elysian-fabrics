<?php
class HmsPatientController extends Controller{
	public function __construct(){
		$this->module="Patient";
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
	if(!is_valid_mobile($data->mobile)){
		$errors["mobile"]="Invalid mobile";
	}
	if(!preg_match("/^[\s\S]+$/",$data->dob)){
		$errors["dob"]="Invalid dob";
	}
	if(!preg_match("/^[\s\S]+$/",$data->mob_ext)){
		$errors["mob_ext"]="Invalid mob_ext";
	}
	if(!preg_match("/^[\s\S]+$/",$data->gender)){
		$errors["gender"]="Invalid gender";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtProfession"])){
		$errors["profession"]="Invalid profession";
	}

*/
		if(count($errors)==0){
			$hmspatient=new HmsPatient();
		$hmspatient->name=$data->name;
		$hmspatient->mobile=$data->mobile;
		$hmspatient->dob=$data->dob;
		$hmspatient->mob_ext=$data->mob_ext;
		$hmspatient->gender=isset($data->gender)?1:0;
		$hmspatient->profession=$data->profession;

			$hmspatient->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(HmsPatient::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!is_valid_mobile($data->mobile)){
		$errors["mobile"]="Invalid mobile";
	}
	if(!preg_match("/^[\s\S]+$/",$data->dob)){
		$errors["dob"]="Invalid dob";
	}
	if(!preg_match("/^[\s\S]+$/",$data->mob_ext)){
		$errors["mob_ext"]="Invalid mob_ext";
	}
	if(!preg_match("/^[\s\S]+$/",$data->gender)){
		$errors["gender"]="Invalid gender";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtProfession"])){
		$errors["profession"]="Invalid profession";
	}

*/
		if(count($errors)==0){
			$hmspatient=new HmsPatient();
			$hmspatient->id=$data->id;
		$hmspatient->name=$data->name;
		$hmspatient->mobile=$data->mobile;
		$hmspatient->dob=$data->dob;
		$hmspatient->mob_ext=$data->mob_ext;
		$hmspatient->gender=isset($data->gender)?1:0;
		$hmspatient->profession=$data->profession;

		$hmspatient->update();
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
		HmsPatient::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(HmsPatient::find($id));
	}
}
?>
