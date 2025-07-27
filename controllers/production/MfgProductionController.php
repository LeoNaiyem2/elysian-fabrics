<?php
class MfgProductionController extends Controller{
	public function __construct(){
		$this->module="production";
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
	if(!preg_match("/^[\s\S]+$/",$data->bom_id)){
		$errors["bom_id"]="Invalid bom_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->qty)){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->labor_cost)){
		$errors["labor_cost"]="Invalid labor_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->manager_id)){
		$errors["manager_id"]="Invalid manager_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->total_cost)){
		$errors["total_cost"]="Invalid total_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->uom_id)){
		$errors["uom_id"]="Invalid uom_id";
	}

*/
		if(count($errors)==0){
			$mfgproduction=new MfgProduction();
		$mfgproduction->production_datetime=date("Y-m-d",strtotime($data->production_datetime));
		$mfgproduction->bom_id=$data->bom_id;
		$mfgproduction->qty=$data->qty;
		$mfgproduction->labor_cost=$data->labor_cost;
		$mfgproduction->manager_id=$data->manager_id;
		$mfgproduction->total_cost=$data->total_cost;
		$mfgproduction->product_id=$data->product_id;
		$mfgproduction->uom_id=$data->uom_id;

			$mfgproduction->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(MfgProduction::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data->bom_id)){
		$errors["bom_id"]="Invalid bom_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->qty)){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->labor_cost)){
		$errors["labor_cost"]="Invalid labor_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->manager_id)){
		$errors["manager_id"]="Invalid manager_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->total_cost)){
		$errors["total_cost"]="Invalid total_cost";
	}
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->uom_id)){
		$errors["uom_id"]="Invalid uom_id";
	}

*/
		if(count($errors)==0){
			$mfgproduction=new MfgProduction();
			$mfgproduction->id=$data->id;
		$mfgproduction->production_datetime=date("Y-m-d",strtotime($data->production_datetime));
		$mfgproduction->bom_id=$data->bom_id;
		$mfgproduction->qty=$data->qty;
		$mfgproduction->labor_cost=$data->labor_cost;
		$mfgproduction->manager_id=$data->manager_id;
		$mfgproduction->total_cost=$data->total_cost;
		$mfgproduction->product_id=$data->product_id;
		$mfgproduction->uom_id=$data->uom_id;

		$mfgproduction->update();
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
		MfgProduction::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(MfgProduction::find($id));
	}
}
?>
