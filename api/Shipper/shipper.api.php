<?php
class ShipperApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["shippers"=>Shipper::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["shippers"=>Shipper::pagination($page,$perpage),"total_records"=>Shipper::count()]);
	}
	function search($data){
		echo json_encode(["shippers"=>Shipper::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["shipper"=>Shipper::find($data->id)]);
	}
	function delete($data){
		Shipper::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$shipper=new Shipper();
		$shipper->name=$data->name;
		$shipper->contact_person=$data->contact_person;
		$shipper->contact_no=$data->contact_no;

		$shipper->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$shipper=new Shipper();
		$shipper->id=$data->id;
		$shipper->name=$data->name;
		$shipper->contact_person=$data->contact_person;
		$shipper->contact_no=$data->contact_no;

		$shipper->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
