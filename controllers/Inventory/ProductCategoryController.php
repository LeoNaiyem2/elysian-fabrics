<?php
class ProductCategoryController extends Controller{
	public function __construct(){
	}
	public function index(){
		view("Inventory");
	}
	public function create(){
		view("Inventory");
	}
public function save($data,$file){
	if(isset($data["create"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data["section_id"])){
		$errors["section_id"]="Invalid section_id";
	}

*/
		if(count($errors)==0){
			$productcategory=new ProductCategory();
		$productcategory->name=$data["name"];
		$productcategory->section_id=$data["section_id"];
		$productcategory->created_at=$now;
		$productcategory->updated_at=$now;

			$productcategory->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		view("Inventory",ProductCategory::find($id));
}
public function update($data,$file){
	if(isset($data["update"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data["section_id"])){
		$errors["section_id"]="Invalid section_id";
	}

*/
		if(count($errors)==0){
			$productcategory=new ProductCategory();
			$productcategory->id=$data["id"];
		$productcategory->name=$data["name"];
		$productcategory->section_id=$data["section_id"];
		$productcategory->created_at=$now;
		$productcategory->updated_at=$now;

		$productcategory->update();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
	public function confirm($id){
		view("Inventory");
	}
	public function delete($id){
		ProductCategory::delete($id);
		redirect();
	}
	public function show($id){
		view("Inventory",ProductCategory::find($id));
	}
}
?>
