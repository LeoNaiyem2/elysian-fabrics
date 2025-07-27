<?php
class DeliveryDetailController extends Controller{
	public function __construct(){
		$this->module="Delivery";
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
	if(!preg_match("/^[\s\S]+$/",$_POST["txtDeliveryId"])){
		$errors["delivery_id"]="Invalid delivery_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtQty"])){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->price)){
		$errors["price"]="Invalid price";
	}

*/
		if(count($errors)==0){
			$deliverydetail=new DeliveryDetail();
			$deliverydetail->delivery_id=$data->delivery_id;
			$deliverydetail->product_id=$data->product_id;
			$deliverydetail->qty=$data->qty;
			$deliverydetail->price=$data->price;

			$deliverydetail->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(DeliveryDetail::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtDeliveryId"])){
		$errors["delivery_id"]="Invalid delivery_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->product_id)){
		$errors["product_id"]="Invalid product_id";
	}
	if(!preg_match("/^[\s\S]+$/",$_POST["txtQty"])){
		$errors["qty"]="Invalid qty";
	}
	if(!preg_match("/^[\s\S]+$/",$data->price)){
		$errors["price"]="Invalid price";
	}

*/
		if(count($errors)==0){
			$deliverydetail=new DeliveryDetail();
			$deliverydetail->id=$data->id;
		$deliverydetail->delivery_id=$data->delivery_id;
		$deliverydetail->product_id=$data->product_id;
		$deliverydetail->qty=$data->qty;
		$deliverydetail->price=$data->price;

		$deliverydetail->update();
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
		DeliveryDetail::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(DeliveryDetail::find($id));
	}
}
?>
