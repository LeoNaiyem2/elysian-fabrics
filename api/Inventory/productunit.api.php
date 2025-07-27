<?php
class ProductUnitApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["product_units"=>ProductUnit::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["product_units"=>ProductUnit::pagination($page,$perpage),"total_records"=>ProductUnit::count()]);
	}
	function search($data){
		echo json_encode(["product_units"=>ProductUnit::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["productunit"=>ProductUnit::find($data->id)]);
	}
	function delete($data){
		ProductUnit::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$productunit=new ProductUnit();
		$productunit->name=$data->name;
		$productunit->photo=upload($file["photo"], "../img",$data->name);
		$productunit->icon=$data->icon;

		$productunit->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$productunit=new ProductUnit();
		$productunit->id=$data->id;
		$productunit->name=$data->name;
		if(isset($file["photo"]["name"])){
			$productunit->photo=upload($file->photo, "../img",$data->name);
		}else{
			$productunit->photo=ProductUnit::find($data->id)->photo;
		}
		$productunit->icon=$data->icon;

		$productunit->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
