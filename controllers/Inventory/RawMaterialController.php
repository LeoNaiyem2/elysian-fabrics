<?php
class RawMaterialController extends Controller{
	public function __construct(){
		$this->module="inventory";
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
	if(!preg_match("/^[\s\S]+$/",$_POST["txtSupplierName"])){
		$errors["supplier_name"]="Invalid supplier_name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->unit_cost)){
		$errors["unit_cost"]="Invalid unit_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->total_cost)){
		$errors["total_cost"]="Invalid total_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtColor"])){
		$errors["color"]="Invalid color";
	}
	if(!preg_match("/^[\s\S]+$/",$data->quantity)){
		$errors["quantity"]="Invalid quantity";
	}
	if(!preg_match("/^[\s\S]+$/",$data->unit)){
		$errors["unit"]="Invalid unit";
	}

*/
		if(count($errors)==0){
			$rawmaterial=new RawMaterial();
		$rawmaterial->name=$data->name;
		$rawmaterial->supplier_name=$data->supplier_name;
		$rawmaterial->unit_cost=$data->unit_cost;
		$rawmaterial->total_cost=$data->total_cost;
		$rawmaterial->color=$data->color;
		$rawmaterial->quantity=$data->quantity;
		$rawmaterial->unit=$data->unit;

			$rawmaterial->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(RawMaterial::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtSupplierName"])){
		$errors["supplier_name"]="Invalid supplier_name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->unit_cost)){
		$errors["unit_cost"]="Invalid unit_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->total_cost)){
		$errors["total_cost"]="Invalid total_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtColor"])){
		$errors["color"]="Invalid color";
	}
	if(!preg_match("/^[\s\S]+$/",$data->quantity)){
		$errors["quantity"]="Invalid quantity";
	}
	if(!preg_match("/^[\s\S]+$/",$data->unit)){
		$errors["unit"]="Invalid unit";
	}

*/
		if(count($errors)==0){
			$rawmaterial=new RawMaterial();
			$rawmaterial->id=$data->id;
		$rawmaterial->name=$data->name;
		$rawmaterial->supplier_name=$data->supplier_name;
		$rawmaterial->unit_cost=$data->unit_cost;
		$rawmaterial->total_cost=$data->total_cost;
		$rawmaterial->color=$data->color;
		$rawmaterial->quantity=$data->quantity;
		$rawmaterial->unit=$data->unit;

		$rawmaterial->update();
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
		RawMaterial::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(RawMaterial::find($id));
	}
}
?>
