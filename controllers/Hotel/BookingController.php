<?php
class BookingController extends Controller{
	public function __construct(){
	}
	public function index(){
		view("Hotel");
	}
	public function create(){
		view("Hotel");
	}
public function save($data,$file){
	if(isset($data["create"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data["order_total"])){
		$errors["order_total"]="Invalid order_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data["paid_total"])){
		$errors["paid_total"]="Invalid paid_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data["remark"])){
		$errors["remark"]="Invalid remark";
	}
	if(!preg_match("/^[\s\S]+$/",$data["customer_id"])){
		$errors["customer_id"]="Invalid customer_id";
	}

*/
		if(count($errors)==0){
			$booking=new Booking();
		$booking->created_at=$now;
		$booking->order_total=$data["order_total"];
		$booking->paid_total=$data["paid_total"];
		$booking->remark=$data["remark"];
		$booking->customer_id=$data["customer_id"];

			$booking->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		view("Hotel",Booking::find($id));
}
public function update($data,$file){
	if(isset($data["update"])){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data["order_total"])){
		$errors["order_total"]="Invalid order_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data["paid_total"])){
		$errors["paid_total"]="Invalid paid_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data["remark"])){
		$errors["remark"]="Invalid remark";
	}
	if(!preg_match("/^[\s\S]+$/",$data["customer_id"])){
		$errors["customer_id"]="Invalid customer_id";
	}

*/
		if(count($errors)==0){
			$booking=new Booking();
			$booking->id=$data["id"];
		$booking->created_at=$now;
		$booking->order_total=$data["order_total"];
		$booking->paid_total=$data["paid_total"];
		$booking->remark=$data["remark"];
		$booking->customer_id=$data["customer_id"];

		$booking->update();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
	public function confirm($id){
		view("Hotel");
	}
	public function delete($id){
		Booking::delete($id);
		redirect();
	}
	public function show($id){
		view("Hotel",Booking::find($id));
	}
}
?>
