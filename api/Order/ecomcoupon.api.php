<?php
class EcomCouponApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["ecom_coupons"=>EcomCoupon::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["ecom_coupons"=>EcomCoupon::pagination($page,$perpage),"total_records"=>EcomCoupon::count()]);
	}
	function search($data){
		echo json_encode(["coupon"=>EcomCoupon::search($data->coupon)]);
	}
	function find($data){
		echo json_encode(["ecomcoupon"=>EcomCoupon::find($data->id)]);
	}
	function delete($data){
		EcomCoupon::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$ecomcoupon=new EcomCoupon();
		$ecomcoupon->coupon=$data->coupon;
		$ecomcoupon->percent_b2b=$data->percent_b2b;
		$ecomcoupon->percent_b2c=$data->percent_b2c;
		$ecomcoupon->percent_m=$data->percent_m;
		$ecomcoupon->start_date=$data->start_date;
		$ecomcoupon->end_date=$data->end_date;
		$ecomcoupon->created_at=$data->created_at;

		$ecomcoupon->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$ecomcoupon=new EcomCoupon();
		$ecomcoupon->id=$data->id;
		$ecomcoupon->coupon=$data->coupon;
		$ecomcoupon->percent_b2b=$data->percent_b2b;
		$ecomcoupon->percent_b2c=$data->percent_b2c;
		$ecomcoupon->percent_m=$data->percent_m;
		$ecomcoupon->start_date=$data->start_date;
		$ecomcoupon->end_date=$data->end_date;
		$ecomcoupon->created_at=$data->created_at;

		$ecomcoupon->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
