<?php
class SupplierApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["suppliers"=>Supplier::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["suppliers"=>Supplier::pagination($page,$perpage),"total_records"=>Supplier::count()]);
	}
	function search($data){
		echo json_encode(["suppliers"=>Supplier::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["supplier"=>Supplier::find($data->id)]);
	}
	function delete($data){
		Supplier::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$supplier=new Supplier();
		$supplier->name=$data->name;
		$supplier->mobile=$data->mobile;
		$supplier->email=$data->email;
		$supplier->photo=upload($file["photo"], "../img",$data->name);

		$supplier->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$supplier=new Supplier();
		$supplier->id=$data->id;
		$supplier->name=$data->name;
		$supplier->mobile=$data->mobile;
		$supplier->email=$data->email;
		if(isset($file["photo"]["name"])){
			$supplier->photo=upload($file->photo, "../img",$data->name);
		}else{
			$supplier->photo=Supplier::find($data->id)->photo;
		}

		$supplier->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
