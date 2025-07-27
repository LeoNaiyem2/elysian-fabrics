<?php
class ProductCategoryApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["product_categories"=>ProductCategory::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["product_categories"=>ProductCategory::pagination($page,$perpage),"total_records"=>ProductCategory::count()]);
	}
	function search($data){
		echo json_encode(["product_categories"=>ProductCategory::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["productcategory"=>ProductCategory::find($data->id)]);
	}
	function delete($data){
		ProductCategory::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$productcategory=new ProductCategory();
		$productcategory->name=$data->name;
		$productcategory->section_id=$data->section_id;
		$productcategory->updated_at=$data->updated_at;

		$productcategory->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$productcategory=new ProductCategory();
		$productcategory->id=$data->id;
		$productcategory->name=$data->name;
		$productcategory->section_id=$data->section_id;
		$productcategory->updated_at=$data->updated_at;

		$productcategory->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
