<?php
class CattleController extends Controller{
	
	public function __construct(){
      $this->module="Agro";
	}

	public function index(){

		$this->view();
	}

	public function create(){
		$this->view();
	}

	public function save($data,$file){
		if(isset($data["create"])){
			$errors=[];

			if(count($errors)==0){
				
				$cattle=new Cattle();
				$cattle->name=$data["name"];
				$cattle->region=$data["region"];
				$cattle->dob=$data["dob"];
				$cattle->color=$data["color"];
				$cattle->description=$data["description"];
				$cattle->photo=File::upload($file["photo"], "img",$data["id"]);
				$cattle->gender=isset($data["gender"])?1:0;
				$cattle->cattle_category_id=$data["cattle_category_id"];

				$cattle->save();
			redirect();
			}else{
				print_r($errors);
			}
		}
	}

	public function edit($id){
		$this->view(Cattle::find($id));
	}
	
	public function update($data,$file){
	if(isset($data["update"])){
		$errors=[];

		if(count($errors)==0){
			$cattle=new Cattle();
			$cattle->id=$data["id"];
			$cattle->name=$data["name"];
			$cattle->region=$data["region"];
			$cattle->dob=$data["dob"];
			$cattle->color=$data["color"];
			$cattle->description=$data["description"];
			if($file["photo"]["name"]!=""){
				$cattle->photo=File::upload($file["photo"], "img",$data["id"]);
			}else{
				$cattle->photo=Cattle::find($data["id"])->photo;
			}
			$cattle->gender=isset($data["gender"])?1:0;
			$cattle->cattle_category_id=$data["cattle_category_id"];
			$cattle->update();
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
		Cattle::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(Cattle::find($id));
	}
}
?>
