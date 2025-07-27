<?php
class ProductSectionApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["product_sections"=>ProductSection::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["product_sections"=>ProductSection::pagination($page,$perpage),"total_records"=>ProductSection::count()]);
	}
	function search($data){
		echo json_encode(["product_sections"=>ProductSection::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["productsection"=>ProductSection::find($data->id)]);
	}
	function delete($data){
		ProductSection::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$productsection=new ProductSection();
		$productsection->name=$data->name;
		$productsection->unit_id=$data->unit_id;
		$productsection->photo=upload($file["photo"], "../img",$data->name);
		$productsection->icon=$data->icon;

		$productsection->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$productsection=new ProductSection();
		$productsection->id=$data->id;
		$productsection->name=$data->name;
		$productsection->unit_id=$data->unit_id;
		if(isset($file["photo"]["name"])){
			$productsection->photo=upload($file->photo, "../img",$data->name);
		}else{
			$productsection->photo=ProductSection::find($data->id)->photo;
		}
		$productsection->icon=$data->icon;

		$productsection->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
