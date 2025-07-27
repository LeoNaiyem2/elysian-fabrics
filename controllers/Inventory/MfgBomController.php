<?php
class MfgBomController extends Controller{
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
	if(!preg_match("/^[\s\S]+$/",$_POST["txtCode"])){
		$errors["code"]="Invalid code";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtQty"])){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->labour_cost)){
		$errors["labour_cost"]="Invalid labour_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->remark)){
		$errors["remark"]="Invalid remark";
	}

*/
		if(count($errors)==0){
			$mfgbom=new MfgBom();
		$mfgbom->code=$data->code;
		$mfgbom->name=$data->name;
		$mfgbom->product_id=$data->product_id;
		$mfgbom->qty=$data->qty;
		$mfgbom->labour_cost=$data->labour_cost;
		$mfgbom->date=date("Y-m-d",strtotime($data->date));
		$mfgbom->remark=$data->remark;

			$mfgbom->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(MfgBom::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtCode"])){
		$errors["code"]="Invalid code";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtName"])){
		$errors["name"]="Invalid name";
	}
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtQty"])){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->labour_cost)){
		$errors["labour_cost"]="Invalid labour_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->remark)){
		$errors["remark"]="Invalid remark";
	}

*/
		if(count($errors)==0){
			$mfgbom=new MfgBom();
			$mfgbom->id=$data->id;
		$mfgbom->code=$data->code;
		$mfgbom->name=$data->name;
		$mfgbom->product_id=$data->product_id;
		$mfgbom->qty=$data->qty;
		$mfgbom->labour_cost=$data->labour_cost;
		$mfgbom->date=date("Y-m-d",strtotime($data->date));
		$mfgbom->remark=$data->remark;

		$mfgbom->update();
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
		MfgBom::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(MfgBom::find($id));
	}
}
?>
