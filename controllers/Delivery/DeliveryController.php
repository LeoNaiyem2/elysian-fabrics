<?php
class DeliveryController extends Controller{
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
	if(!preg_match("/^[\s\S]+$/",$data->order_id)){
		$errors["order_id"]="Invalid order_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->person_id)){
		$errors["person_id"]="Invalid person_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->shipper_id)){
		$errors["shipper_id"]="Invalid shipper_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->delivery_status_id)){
		$errors["delivery_status_id"]="Invalid delivery_status_id";
	}

*/
		if(count($errors)==0){
			$delivery=new Delivery();
			$delivery->create_at=date("Y-m-d",strtotime($data->create_at));
			$delivery->order_id=$data->order_id;
			$delivery->person_id=$data->person_id;
			$delivery->shipper_id=$data->shipper_id;
			$delivery->shipped_at=date("Y-m-d",strtotime($data->shipped_at));
			$delivery->delivery_status_id=$data->delivery_status_id;

			$delivery->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(Delivery::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data->order_id)){
		$errors["order_id"]="Invalid order_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->person_id)){
		$errors["person_id"]="Invalid person_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->shipper_id)){
		$errors["shipper_id"]="Invalid shipper_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->delivery_status_id)){
		$errors["delivery_status_id"]="Invalid delivery_status_id";
	}

*/
		if(count($errors)==0){
			$delivery=new Delivery();
			$delivery->id=$data->id;
		$delivery->create_at=date("Y-m-d",strtotime($data->create_at));
		$delivery->order_id=$data->order_id;
		$delivery->person_id=$data->person_id;
		$delivery->shipper_id=$data->shipper_id;
		$delivery->shipped_at=date("Y-m-d",strtotime($data->shipped_at));
		$delivery->delivery_status_id=$data->delivery_status_id;

		$delivery->update();
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
		Delivery::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(Delivery::find($id));
	}
}
?>
