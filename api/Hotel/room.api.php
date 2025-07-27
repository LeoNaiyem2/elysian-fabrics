<?php
class RoomApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["rooms"=>Room::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["rooms"=>Room::pagination($page,$perpage),"total_records"=>Room::count()]);
	}
	function search($data){
		echo json_encode(["rooms"=>Room::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["room"=>Room::find($data->id)]);
	}
	function delete($data){
		Room::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$room=new Room();
		$room->name=$data->name;
		$room->code=$data->code;
		$room->room_type_id=$data->room_type_id;
		$room->price=$data->price;

		$room->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$room=new Room();
		$room->id=$data->id;
		$room->name=$data->name;
		$room->code=$data->code;
		$room->room_type_id=$data->room_type_id;
		$room->price=$data->price;

		$room->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
