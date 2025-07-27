<?php
class EcomCouponController extends Controller{
	public function __construct(){
		$this->module="Order";
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
	if(!preg_match("/^[\s\S]+$/",$_POST["txtCoupon"])){
		$errors["coupon"]="Invalid coupon";
	}
	if(!preg_match("/^[\s\S]+$/",$data->percent_b2b)){
		$errors["percent_b2b"]="Invalid percent_b2b";
	}
	if(!preg_match("/^[\s\S]+$/",$data->percent_b2c)){
		$errors["percent_b2c"]="Invalid percent_b2c";
	}
	if(!preg_match("/^[\s\S]+$/",$data->percent_m)){
		$errors["percent_m"]="Invalid percent_m";
	}

*/
		if(count($errors)==0){
			$ecomcoupon=new EcomCoupon();
		$ecomcoupon->coupon=$data->coupon;
		$ecomcoupon->percent_b2b=$data->percent_b2b;
		$ecomcoupon->percent_b2c=$data->percent_b2c;
		$ecomcoupon->percent_m=$data->percent_m;
		$ecomcoupon->start_date=date("Y-m-d",strtotime($data->start_date));
		$ecomcoupon->end_date=date("Y-m-d",strtotime($data->end_date));
		$ecomcoupon->created_at=$now;

			$ecomcoupon->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(EcomCoupon::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$_POST["txtCoupon"])){
		$errors["coupon"]="Invalid coupon";
	}
	if(!preg_match("/^[\s\S]+$/",$data->percent_b2b)){
		$errors["percent_b2b"]="Invalid percent_b2b";
	}
	if(!preg_match("/^[\s\S]+$/",$data->percent_b2c)){
		$errors["percent_b2c"]="Invalid percent_b2c";
	}
	if(!preg_match("/^[\s\S]+$/",$data->percent_m)){
		$errors["percent_m"]="Invalid percent_m";
	}

*/
		if(count($errors)==0){
			$ecomcoupon=new EcomCoupon();
			$ecomcoupon->id=$data->id;
		$ecomcoupon->coupon=$data->coupon;
		$ecomcoupon->percent_b2b=$data->percent_b2b;
		$ecomcoupon->percent_b2c=$data->percent_b2c;
		$ecomcoupon->percent_m=$data->percent_m;
		$ecomcoupon->start_date=date("Y-m-d",strtotime($data->start_date));
		$ecomcoupon->end_date=date("Y-m-d",strtotime($data->end_date));
		$ecomcoupon->created_at=$now;

		$ecomcoupon->update();
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
		EcomCoupon::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(EcomCoupon::find($id));
	}
}
?>
