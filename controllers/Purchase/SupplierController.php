<?php
class SupplierController extends Controller{
	public function __construct(){
		$this->module="Purchase";
	}
	public function index(){
		$this->view();
	}
	public function create(){
		$this->view();
	}
public function save($data,$file){
	if(isset($data->create)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!is_valid_mobile($data->mobile)){
		$errors["mobile"]="Invalid mobile";
	}
	if(!is_valid_email($data->email)){
		$errors["email"]="Invalid email";
	}
	if(!preg_match("/^[\s\S]+$/",$data->photo)){
		$errors["photo"]="Invalid photo";
	}

*/
		if(count($errors)==0){
			$supplier=new Supplier();
			$supplier->name=$data->name;
			$supplier->mobile=$data->mobile;
			$supplier->email=$data->email;
			$supplier->photo=File::upload($file->photo,"img",$data->id);

			$supplier->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(Supplier::find($id));
}
public function update($data,$file){
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!is_valid_mobile($data->mobile)){
		$errors["mobile"]="Invalid mobile";
	}
	if(!is_valid_email($data->email)){
		$errors["email"]="Invalid email";
	}
	if(!preg_match("/^[\s\S]+$/",$data->photo)){
		$errors["photo"]="Invalid photo";
	}

*/
		if(count($errors)==0){
			$supplier=new Supplier();
			$supplier->id=$data->id;
			$supplier->name=$data->name;
			$supplier->mobile=$data->mobile;
			$supplier->email=$data->email;
			
			if($file->photo->name!=""){
				$supplier->photo=File::upload($file->photo, "img",$data->id);
			}else{
				$supplier->photo=Supplier::find($data->id)->photo;
			}

			$supplier->update();
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
		Supplier::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(Supplier::find($id));
	}
}
?>
