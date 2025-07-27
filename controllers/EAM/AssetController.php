<?php
class AssetController extends Controller{
	public function __construct(){
	}
	public function index(){
		view("EAM");
	}
	public function create(){
		view("EAM");
	}
public function save($data,$file){
	if(isset($data["create"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data["price"])){
		$errors["price"]="Invalid price";
	}

*/
		if(count($errors)==0){
			$asset=new Asset();
		$asset->name=$data["name"];
		$asset->price=$data["price"];
		$asset->purchased_at=date("Y-m-d",strtotime($data["purchased_at"]));

			$asset->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		view("EAM",Asset::find($id));
}
public function update($data,$file){
	if(isset($data["update"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data["price"])){
		$errors["price"]="Invalid price";
	}

*/
		if(count($errors)==0){
			$asset=new Asset();
			$asset->id=$data["id"];
		$asset->name=$data["name"];
		$asset->price=$data["price"];
		$asset->purchased_at=date("Y-m-d",strtotime($data["purchased_at"]));

		$asset->update();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
	public function confirm($id){
		view("EAM");
	}
	public function delete($id){
		Asset::delete($id);
		redirect();
	}
	public function show($id){
		view("EAM",Asset::find($id));
	}
}
?>
