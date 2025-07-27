<?php
class RawMaterial extends Model implements JsonSerializable{
	public $id;
	public $name;
	public $supplier_name;
	public $unit_cost;
	public $total_cost;
	public $color;
	public $quantity;
	public $unit;

	public function __construct(){
	}
	public function set($id,$name,$supplier_name,$unit_cost,$total_cost,$color,$quantity,$unit){
		$this->id=$id;
		$this->name=$name;
		$this->supplier_name=$supplier_name;
		$this->unit_cost=$unit_cost;
		$this->total_cost=$total_cost;
		$this->color=$color;
		$this->quantity=$quantity;
		$this->unit=$unit;

	}
	public function save(){
		global $db,$tx;
		$db->query("insert into {$tx}raw_materials(name,supplier_name,unit_cost,total_cost,color,quantity,unit)values('$this->name','$this->supplier_name','$this->unit_cost','$this->total_cost','$this->color','$this->quantity','$this->unit')");
		return $db->insert_id;
	}
	public function update(){
		global $db,$tx;
		$db->query("update {$tx}raw_materials set name='$this->name',supplier_name='$this->supplier_name',unit_cost='$this->unit_cost',total_cost='$this->total_cost',color='$this->color',quantity='$this->quantity',unit='$this->unit' where id='$this->id'");
	}
	public static function delete($id){
		global $db,$tx;
		$db->query("delete from {$tx}raw_materials where id={$id}");
	}
	public function jsonSerialize(){
		return get_object_vars($this);
	}
	public static function all(){
		global $db,$tx;
		$result=$db->query("select id,name,supplier_name,unit_cost,total_cost,color,quantity,unit from {$tx}raw_materials");
		$data=[];
		while($rawmaterial=$result->fetch_object()){
			$data[]=$rawmaterial;
		}
			return $data;
	}
	public static function pagination($page=1,$perpage=10,$criteria=""){
		global $db,$tx;
		$top=($page-1)*$perpage;
		$result=$db->query("select id,name,supplier_name,unit_cost,total_cost,color,quantity,unit from {$tx}raw_materials $criteria limit $top,$perpage");
		$data=[];
		while($rawmaterial=$result->fetch_object()){
			$data[]=$rawmaterial;
		}
			return $data;
	}
	public static function count($criteria=""){
		global $db,$tx;
		$result =$db->query("select count(*) from {$tx}raw_materials $criteria");
		list($count)=$result->fetch_row();
			return $count;
	}
	public static function find($id){
		global $db,$tx;
		$result =$db->query("select id,name,supplier_name,unit_cost,total_cost,color,quantity,unit from {$tx}raw_materials where id='$id'");
		$rawmaterial=$result->fetch_object();
			return $rawmaterial;
	}
	public static function filter($name){
		global $db,$tx;
		//Update field name after where keyword if don't have name field
		$result=$db->query("select id,name,supplier_name,unit_cost,total_cost,color,quantity,unit from {$tx}raw_materials where name like '%$name%'");
		$data=[];
		while($rawmaterial=$result->fetch_object()){
			$data[]=$rawmaterial;
		}
			return $data;
	}
	static function get_last_id(){
		global $db,$tx;
		$result =$db->query("select max(id) last_id from {$tx}raw_materials");
		$rawmaterial =$result->fetch_object();
		return $rawmaterial->last_id;
	}
	public function json(){
		return json_encode($this);
	}
	public function __toString(){
		return "		Id:$this->id<br> 
		Name:$this->name<br> 
		Supplier Name:$this->supplier_name<br> 
		Unit Cost:$this->unit_cost<br> 
		Total Cost:$this->total_cost<br> 
		Color:$this->color<br> 
		Quantity:$this->quantity<br> 
		Unit:$this->unit<br> 
";
	}

	//-------------HTML----------//

	static function html_select($name="cmbRawMaterial"){
		global $db,$tx;
		$html="<select id='$name' name='$name'> ";
		$result =$db->query("select id,name from {$tx}raw_materials");
		while($rawmaterial=$result->fetch_object()){
			$html.="<option value ='$rawmaterial->id'>$rawmaterial->name</option>";
		}
		$html.="</select>";
		return $html;
	}
	static function html_table($page = 1,$perpage = 10,$criteria="",$action=true){
		global $db,$tx,$base_url;
		$count_result =$db->query("select count(*) total from {$tx}raw_materials $criteria ");
		list($total_rows)=$count_result->fetch_row();
		$total_pages = ceil($total_rows /$perpage);
		$top = ($page - 1)*$perpage;
		$result=$db->query("select id,name,supplier_name,unit_cost,total_cost,color,quantity,unit from {$tx}raw_materials $criteria limit $top,$perpage");
		$html="<table class='table'>";
		if($action){
			$html.="<tr><th>Id</th><th>Name</th><th>Supplier Name</th><th>Unit Cost</th><th>Total Cost</th><th>Color</th><th>Quantity</th><th>Unit</th><th>Action</th></tr>";
		}else{
			$html.="<tr><th>Id</th><th>Name</th><th>Supplier Name</th><th>Unit Cost</th><th>Total Cost</th><th>Color</th><th>Quantity</th><th>Unit</th></tr>";
		}
		while($rawmaterial=$result->fetch_object()){
			$action_buttons = "";
			if($action){
				$action_buttons = "<td><div class='btn-group' style='display:flex;'>";
				$action_buttons.= Event::button(["name"=>"show", "value"=>"Show", "class"=>"btn btn-info", "route"=>"rawmaterial/show/$rawmaterial->id"]);
				$action_buttons.= Event::button(["name"=>"edit", "value"=>"Edit", "class"=>"btn btn-primary", "route"=>"rawmaterial/edit/$rawmaterial->id"]);
				$action_buttons.= Event::button(["name"=>"delete", "value"=>"Delete", "class"=>"btn btn-danger", "route"=>"rawmaterial/confirm/$rawmaterial->id"]);
				$action_buttons.= "</div></td>";
			}
			$html.="<tr><td>$rawmaterial->id</td><td>$rawmaterial->name</td><td>$rawmaterial->supplier_name</td><td>$rawmaterial->unit_cost</td><td>$rawmaterial->total_cost</td><td>$rawmaterial->color</td><td>$rawmaterial->quantity</td><td>$rawmaterial->unit</td> $action_buttons</tr>";
		}
		$html.="</table>";
		$html.= pagination($page,$total_pages);
		return $html;
	}
	static function html_row_details($id){
		global $db,$tx,$base_url;
		$result =$db->query("select id,name,supplier_name,unit_cost,total_cost,color,quantity,unit from {$tx}raw_materials where id={$id}");
		$rawmaterial=$result->fetch_object();
		$html="<table class='table'>";
		$html.="<tr><th colspan=\"2\">RawMaterial Show</th></tr>";
		$html.="<tr><th>Id</th><td>$rawmaterial->id</td></tr>";
		$html.="<tr><th>Name</th><td>$rawmaterial->name</td></tr>";
		$html.="<tr><th>Supplier Name</th><td>$rawmaterial->supplier_name</td></tr>";
		$html.="<tr><th>Unit Cost</th><td>$rawmaterial->unit_cost</td></tr>";
		$html.="<tr><th>Total Cost</th><td>$rawmaterial->total_cost</td></tr>";
		$html.="<tr><th>Color</th><td>$rawmaterial->color</td></tr>";
		$html.="<tr><th>Quantity</th><td>$rawmaterial->quantity</td></tr>";
		$html.="<tr><th>Unit</th><td>$rawmaterial->unit</td></tr>";

		$html.="</table>";
		return $html;
	}
}
?>
