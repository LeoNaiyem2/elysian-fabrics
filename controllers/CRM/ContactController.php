<?php
class ContactController extends Controller{
	public function __construct(){
	}
	public function index(){
		view("CRM");
	}
	public function create(){
		view("CRM");
	}
public function save($data,$file){
	if(isset($data["create"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data["contact_category_id"])){
		$errors["contact_category_id"]="Invalid contact_category_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtContactNo"])){
		$errors["contact_no"]="Invalid contact_no";
	}
	if(!is_valid_email($data["email"])){
		$errors["email"]="Invalid email";
	}

*/
		if(count($errors)==0){
			$contact=new Contact();
		$contact->name=$data["name"];
		$contact->contact_category_id=$data["contact_category_id"];
		$contact->contact_no=$data["contact_no"];
		$contact->email=$data["email"];

			$contact->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		view("CRM",Contact::find($id));
}
public function update($data,$file){
	if(isset($data["update"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data["contact_category_id"])){
		$errors["contact_category_id"]="Invalid contact_category_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtContactNo"])){
		$errors["contact_no"]="Invalid contact_no";
	}
	if(!is_valid_email($data["email"])){
		$errors["email"]="Invalid email";
	}

*/
		if(count($errors)==0){
			$contact=new Contact();
			$contact->id=$data["id"];
		$contact->name=$data["name"];
		$contact->contact_category_id=$data["contact_category_id"];
		$contact->contact_no=$data["contact_no"];
		$contact->email=$data["email"];

		$contact->update();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
	public function confirm($id){
		view("CRM");
	}
	public function delete($id){
		Contact::delete($id);
		redirect();
	}
	public function show($id){
		view("CRM",Contact::find($id));
	}
}
?>
