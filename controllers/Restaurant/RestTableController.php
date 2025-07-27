<?php
class RestTableController extends Controller{
	public function __construct(){
		$this->module="Restaurant";
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
	if(!preg_match("/^[\s\S]+$/",$data->status)){
		$errors["status"]="Invalid status";
	}
	if(!preg_match("/^[\s\S]+$/",$data->photo)){
		$errors["photo"]="Invalid photo";
	}
	if(!preg_match("/^[\s\S]+$/",$data->seats)){
		$errors["seats"]="Invalid seats";
	}

*/
		if(count($errors)==0){
			$resttable=new RestTable();
		$resttable->name=$data->name;
		$resttable->status=$data->status;
		$resttable->photo=File::upload($file->photo, "img",$data->id);
		$resttable->seats=$data->seats;

			$resttable->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(RestTable::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->status)){
		$errors["status"]="Invalid status";
	}
	if(!preg_match("/^[\s\S]+$/",$data->photo)){
		$errors["photo"]="Invalid photo";
	}
	if(!preg_match("/^[\s\S]+$/",$data->seats)){
		$errors["seats"]="Invalid seats";
	}

*/
		if(count($errors)==0){
			$resttable=new RestTable();
			$resttable->id=$data->id;
		$resttable->name=$data->name;
		$resttable->status=$data->status;
		if($file->photo->name!=""){
			$resttable->photo=File::upload($file->photo, "img",$data->id);
		}else{
			$resttable->photo=RestTable::find($data->id)->photo;
		}
		$resttable->seats=$data->seats;

		$resttable->update();
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
		RestTable::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(RestTable::find($id));
	}
}
?>
