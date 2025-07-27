<?php
class AcademyInvoiceDetail extends Model implements JsonSerializable{
	public $id;
	public $invoice_id;
	public $service_id;
	public $price;
	public $discount;
	public $unit;
	public $vat;

	public function __construct(){
	}
	public function set($id,$invoice_id,$service_id,$price,$discount,$unit,$vat){
		$this->id=$id;
		$this->invoice_id=$invoice_id;
		$this->service_id=$service_id;
		$this->price=$price;
		$this->discount=$discount;
		$this->unit=$unit;
		$this->vat=$vat;

	}
	public function save(){
		global $db,$tx;
		$db->query("insert into {$tx}academy_invoice_details(invoice_id,service_id,price,discount,unit,vat)values('$this->invoice_id','$this->service_id','$this->price','$this->discount','$this->unit','$this->vat')");
		return $db->insert_id;
	}
	public function update(){
		global $db,$tx;
		$db->query("update {$tx}academy_invoice_details set invoice_id='$this->invoice_id',service_id='$this->service_id',price='$this->price',discount='$this->discount',unit='$this->unit',vat='$this->vat' where id='$this->id'");
	}
	public static function delete($id){
		global $db,$tx;
		$db->query("delete from {$tx}academy_invoice_details where id={$id}");
	}
	public function jsonSerialize(){
		return get_object_vars($this);
	}
	public static function all(){
		global $db,$tx;
		$result=$db->query("select id,invoice_id,service_id,price,discount,unit,vat from {$tx}academy_invoice_details");
		$data=[];
		while($academyinvoicedetail=$result->fetch_object()){
			$data[]=$academyinvoicedetail;
		}
			return $data;
	}
	public static function pagination($page=1,$perpage=10,$criteria=""){
		global $db,$tx;
		$top=($page-1)*$perpage;
		$result=$db->query("select id,invoice_id,service_id,price,discount,unit,vat from {$tx}academy_invoice_details $criteria limit $top,$perpage");
		$data=[];
		while($academyinvoicedetail=$result->fetch_object()){
			$data[]=$academyinvoicedetail;
		}
			return $data;
	}
	public static function count($criteria=""){
		global $db,$tx;
		$result =$db->query("select count(*) from {$tx}academy_invoice_details $criteria");
		list($count)=$result->fetch_row();
			return $count;
	}
	public static function find($id){
		global $db,$tx;
		$result =$db->query("select id,invoice_id,service_id,price,discount,unit,vat from {$tx}academy_invoice_details where id='$id'");
		$academyinvoicedetail=$result->fetch_object();
			return $academyinvoicedetail;
	}
	public static function filter($name){
		global $db,$tx;
		//Update field name after where keyword if don't have name field
		$result=$db->query("select id,invoice_id,service_id,price,discount,unit,vat from {$tx}academy_invoice_details where name like '%$name%'");
		$data=[];
		while($academyinvoicedetail=$result->fetch_object()){
			$data[]=$academyinvoicedetail;
		}
			return $data;
	}
	static function get_last_id(){
		global $db,$tx;
		$result =$db->query("select max(id) last_id from {$tx}academy_invoice_details");
		$academyinvoicedetail =$result->fetch_object();
		return $academyinvoicedetail->last_id;
	}
	public function json(){
		return json_encode($this);
	}
	public function __toString(){
		return "		Id:$this->id<br> 
		Invoice Id:$this->invoice_id<br> 
		Service Id:$this->service_id<br> 
		Price:$this->price<br> 
		Discount:$this->discount<br> 
		Unit:$this->unit<br> 
		Vat:$this->vat<br> 
";
	}

	//-------------HTML----------//

	static function html_select($name="cmbAcademyInvoiceDetail"){
		global $db,$tx;
		$html="<select id='$name' name='$name'> ";
		$result =$db->query("select id,name from {$tx}academy_invoice_details");
		while($academyinvoicedetail=$result->fetch_object()){
			$html.="<option value ='$academyinvoicedetail->id'>$academyinvoicedetail->name</option>";
		}
		$html.="</select>";
		return $html;
	}
	static function html_table($page = 1,$perpage = 10,$criteria="",$action=true){
		global $db,$tx,$base_url;
		$count_result =$db->query("select count(*) total from {$tx}academy_invoice_details $criteria ");
		list($total_rows)=$count_result->fetch_row();
		$total_pages = ceil($total_rows /$perpage);
		$top = ($page - 1)*$perpage;
		$result=$db->query("select id,invoice_id,service_id,price,discount,unit,vat from {$tx}academy_invoice_details $criteria limit $top,$perpage");
		$html="<table class='table'>";
		if($action){
			$html.="<tr><th>Id</th><th>Invoice Id</th><th>Service Id</th><th>Price</th><th>Discount</th><th>Unit</th><th>Vat</th><th>Action</th></tr>";
		}else{
			$html.="<tr><th>Id</th><th>Invoice Id</th><th>Service Id</th><th>Price</th><th>Discount</th><th>Unit</th><th>Vat</th></tr>";
		}
		while($academyinvoicedetail=$result->fetch_object()){
			$action_buttons = "";
			if($action){
				$action_buttons = "<td><div class='btn-group' style='display:flex;'>";
				$action_buttons.= Event::button(["name"=>"show", "value"=>"Show", "class"=>"btn btn-info", "route"=>"academyinvoicedetail/show/$academyinvoicedetail->id"]);
				$action_buttons.= Event::button(["name"=>"edit", "value"=>"Edit", "class"=>"btn btn-primary", "route"=>"academyinvoicedetail/edit/$academyinvoicedetail->id"]);
				$action_buttons.= Event::button(["name"=>"delete", "value"=>"Delete", "class"=>"btn btn-danger", "route"=>"academyinvoicedetail/confirm/$academyinvoicedetail->id"]);
				$action_buttons.= "</div></td>";
			}
			$html.="<tr><td>$academyinvoicedetail->id</td><td>$academyinvoicedetail->invoice_id</td><td>$academyinvoicedetail->service_id</td><td>$academyinvoicedetail->price</td><td>$academyinvoicedetail->discount</td><td>$academyinvoicedetail->unit</td><td>$academyinvoicedetail->vat</td> $action_buttons</tr>";
		}
		$html.="</table>";
		$html.= pagination($page,$total_pages);
		return $html;
	}
	static function html_row_details($id){
		global $db,$tx,$base_url;
		$result =$db->query("select id,invoice_id,service_id,price,discount,unit,vat from {$tx}academy_invoice_details where id={$id}");
		$academyinvoicedetail=$result->fetch_object();
		$html="<table class='table'>";
		$html.="<tr><th colspan=\"2\">AcademyInvoiceDetail Show</th></tr>";
		$html.="<tr><th>Id</th><td>$academyinvoicedetail->id</td></tr>";
		$html.="<tr><th>Invoice Id</th><td>$academyinvoicedetail->invoice_id</td></tr>";
		$html.="<tr><th>Service Id</th><td>$academyinvoicedetail->service_id</td></tr>";
		$html.="<tr><th>Price</th><td>$academyinvoicedetail->price</td></tr>";
		$html.="<tr><th>Discount</th><td>$academyinvoicedetail->discount</td></tr>";
		$html.="<tr><th>Unit</th><td>$academyinvoicedetail->unit</td></tr>";
		$html.="<tr><th>Vat</th><td>$academyinvoicedetail->vat</td></tr>";

		$html.="</table>";
		return $html;
	}
}
?>
