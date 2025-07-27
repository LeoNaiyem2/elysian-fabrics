<?php
class ProductTypeApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["product_types"=>ProductType::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["product_types"=>ProductType::pagination($page,$perpage),"total_records"=>ProductType::count()]);
	}
	function search($data){
		echo json_encode(["product_types"=>ProductType::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["producttype"=>ProductType::find($data->id)]);
	}
	function delete($data){
		ProductType::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$producttype=new ProductType();
		$producttype->name=$data->name;

		$producttype->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$producttype=new ProductType();
		$producttype->id=$data->id;
		$producttype->name=$data->name;

		$producttype->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
