<?php
class StockController extends Controller{
	public function __construct(){
		$this->module="Stock";
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
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->qty)){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->transaction_type_id)){
		$errors["transaction_type_id"]="Invalid transaction_type_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->remark)){
		$errors["remark"]="Invalid remark";
	}
	if(!preg_match("/^[\s\S]+$/",$data->warehouse_id)){
		$errors["warehouse_id"]="Invalid warehouse_id";
	}

*/
		if(count($errors)==0){
			$stock=new Stock();
		$stock->product_id=$data->product_id;
		$stock->qty=$data->qty;
		$stock->transaction_type_id=$data->transaction_type_id;
		$stock->remark=$data->remark;
		$stock->created_at=$now;
		$stock->warehouse_id=$data->warehouse_id;

			$stock->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(Stock::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->qty)){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->transaction_type_id)){
		$errors["transaction_type_id"]="Invalid transaction_type_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->remark)){
		$errors["remark"]="Invalid remark";
	}
	if(!preg_match("/^[\s\S]+$/",$data->warehouse_id)){
		$errors["warehouse_id"]="Invalid warehouse_id";
	}

*/
		if(count($errors)==0){
			$stock=new Stock();
			$stock->id=$data->id;
		$stock->product_id=$data->product_id;
		$stock->qty=$data->qty;
		$stock->transaction_type_id=$data->transaction_type_id;
		$stock->remark=$data->remark;
		$stock->created_at=$now;
		$stock->warehouse_id=$data->warehouse_id;

		$stock->update();
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
		Stock::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(Stock::find($id));
	}
}
?>
