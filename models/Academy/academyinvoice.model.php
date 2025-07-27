<?php
class AcademyInvoice extends Model implements JsonSerializable{
	public $id;
	public $student_id;
	public $created_at;
	public $updated_at;
	public $invoice_total;
	public $discount;
	public $paid_total;
	public $previous_due;
	public $payment_term_id;
	public $vat;

	public function __construct(){
	}
	public function set($id,$student_id,$created_at,$updated_at,$invoice_total,$discount,$paid_total,$previous_due,$payment_term_id,$vat){
		$this->id=$id;
		$this->student_id=$student_id;
		$this->created_at=$created_at;
		$this->updated_at=$updated_at;
		$this->invoice_total=$invoice_total;
		$this->discount=$discount;
		$this->paid_total=$paid_total;
		$this->previous_due=$previous_due;
		$this->payment_term_id=$payment_term_id;
		$this->vat=$vat;

	}
	public function save(){
		global $db,$tx;
		$db->query("insert into {$tx}academy_invoices(student_id,created_at,updated_at,invoice_total,discount,paid_total,previous_due,payment_term_id,vat)values('$this->student_id','$this->created_at','$this->updated_at','$this->invoice_total','$this->discount','$this->paid_total','$this->previous_due','$this->payment_term_id','$this->vat')");
		return $db->insert_id;
	}
	public function update(){
		global $db,$tx;
		$db->query("update {$tx}academy_invoices set student_id='$this->student_id',created_at='$this->created_at',updated_at='$this->updated_at',invoice_total='$this->invoice_total',discount='$this->discount',paid_total='$this->paid_total',previous_due='$this->previous_due',payment_term_id='$this->payment_term_id',vat='$this->vat' where id='$this->id'");
	}
	public static function delete($id){
		global $db,$tx;
		$db->query("delete from {$tx}academy_invoices where id={$id}");
	}
	public function jsonSerialize(){
		return get_object_vars($this);
	}
	public static function all(){
		global $db,$tx;
		$result=$db->query("select id,student_id,created_at,updated_at,invoice_total,discount,paid_total,previous_due,payment_term_id,vat from {$tx}academy_invoices");
		$data=[];
		while($academyinvoice=$result->fetch_object()){
			$data[]=$academyinvoice;
		}
			return $data;
	}
	public static function pagination($page=1,$perpage=10,$criteria=""){
		global $db,$tx;
		$top=($page-1)*$perpage;
		$result=$db->query("select id,student_id,created_at,updated_at,invoice_total,discount,paid_total,previous_due,payment_term_id,vat from {$tx}academy_invoices $criteria limit $top,$perpage");
		$data=[];
		while($academyinvoice=$result->fetch_object()){
			$data[]=$academyinvoice;
		}
			return $data;
	}
	public static function count($criteria=""){
		global $db,$tx;
		$result =$db->query("select count(*) from {$tx}academy_invoices $criteria");
		list($count)=$result->fetch_row();
			return $count;
	}
	public static function find($id){
		global $db,$tx;
		$result =$db->query("select id,student_id,created_at,updated_at,invoice_total,discount,paid_total,previous_due,payment_term_id,vat from {$tx}academy_invoices where id='$id'");
		$academyinvoice=$result->fetch_object();
			return $academyinvoice;
	}
	public static function filter($name){
		global $db,$tx;
		//Update field name after where keyword if don't have name field
		$result=$db->query("select id,student_id,created_at,updated_at,invoice_total,discount,paid_total,previous_due,payment_term_id,vat from {$tx}academy_invoices where name like '%$name%'");
		$data=[];
		while($academyinvoice=$result->fetch_object()){
			$data[]=$academyinvoice;
		}
			return $data;
	}
	static function get_last_id(){
		global $db,$tx;
		$result =$db->query("select max(id) last_id from {$tx}academy_invoices");
		$academyinvoice =$result->fetch_object();
		return $academyinvoice->last_id;
	}
	public function json(){
		return json_encode($this);
	}
	public function __toString(){
		return "		Id:$this->id<br> 
		Student Id:$this->student_id<br> 
		Created At:$this->created_at<br> 
		Updated At:$this->updated_at<br> 
		Invoice Total:$this->invoice_total<br> 
		Discount:$this->discount<br> 
		Paid Total:$this->paid_total<br> 
		Previous Due:$this->previous_due<br> 
		Payment Term Id:$this->payment_term_id<br> 
		Vat:$this->vat<br> 
";
	}

	//-------------HTML----------//

	static function html_select($name="cmbAcademyInvoice"){
		global $db,$tx;
		$html="<select id='$name' name='$name'> ";
		$result =$db->query("select id,name from {$tx}academy_invoices");
		while($academyinvoice=$result->fetch_object()){
			$html.="<option value ='$academyinvoice->id'>$academyinvoice->name</option>";
		}
		$html.="</select>";
		return $html;
	}
	static function html_table($page = 1,$perpage = 10,$criteria="",$action=true){
		global $db,$tx,$base_url;
		$count_result =$db->query("select count(*) total from {$tx}academy_invoices $criteria ");
		list($total_rows)=$count_result->fetch_row();
		$total_pages = ceil($total_rows /$perpage);
		$top = ($page - 1)*$perpage;
		$result=$db->query("select id,student_id,created_at,updated_at,invoice_total,discount,paid_total,previous_due,payment_term_id,vat from {$tx}academy_invoices $criteria limit $top,$perpage");
		$html="<table class='table'>";
		if($action){
			$html.="<tr><th>Id</th><th>Student Id</th><th>Created At</th><th>Updated At</th><th>Invoice Total</th><th>Discount</th><th>Paid Total</th><th>Previous Due</th><th>Payment Term Id</th><th>Vat</th><th>Action</th></tr>";
		}else{
			$html.="<tr><th>Id</th><th>Student Id</th><th>Created At</th><th>Updated At</th><th>Invoice Total</th><th>Discount</th><th>Paid Total</th><th>Previous Due</th><th>Payment Term Id</th><th>Vat</th></tr>";
		}
		while($academyinvoice=$result->fetch_object()){
			$action_buttons = "";
			if($action){
				$action_buttons = "<td><div class='btn-group' style='display:flex;'>";
				$action_buttons.= Event::button(["name"=>"show", "value"=>"Show", "class"=>"btn btn-info", "route"=>"academyinvoice/show/$academyinvoice->id"]);
				$action_buttons.= Event::button(["name"=>"edit", "value"=>"Edit", "class"=>"btn btn-primary", "route"=>"academyinvoice/edit/$academyinvoice->id"]);
				$action_buttons.= Event::button(["name"=>"delete", "value"=>"Delete", "class"=>"btn btn-danger", "route"=>"academyinvoice/confirm/$academyinvoice->id"]);
				$action_buttons.= "</div></td>";
			}
			$html.="<tr><td>$academyinvoice->id</td><td>$academyinvoice->student_id</td><td>$academyinvoice->created_at</td><td>$academyinvoice->updated_at</td><td>$academyinvoice->invoice_total</td><td>$academyinvoice->discount</td><td>$academyinvoice->paid_total</td><td>$academyinvoice->previous_due</td><td>$academyinvoice->payment_term_id</td><td>$academyinvoice->vat</td> $action_buttons</tr>";
		}
		$html.="</table>";
		$html.= pagination($page,$total_pages);
		return $html;
	}
	static function html_row_details($id){
		global $db,$tx,$base_url;
		$result =$db->query("select id,student_id,created_at,updated_at,invoice_total,discount,paid_total,previous_due,payment_term_id,vat from {$tx}academy_invoices where id={$id}");
		$academyinvoice=$result->fetch_object();
		$html="<table class='table'>";
		$html.="<tr><th colspan=\"2\">AcademyInvoice Show</th></tr>";
		$html.="<tr><th>Id</th><td>$academyinvoice->id</td></tr>";
		$html.="<tr><th>Student Id</th><td>$academyinvoice->student_id</td></tr>";
		$html.="<tr><th>Created At</th><td>$academyinvoice->created_at</td></tr>";
		$html.="<tr><th>Updated At</th><td>$academyinvoice->updated_at</td></tr>";
		$html.="<tr><th>Invoice Total</th><td>$academyinvoice->invoice_total</td></tr>";
		$html.="<tr><th>Discount</th><td>$academyinvoice->discount</td></tr>";
		$html.="<tr><th>Paid Total</th><td>$academyinvoice->paid_total</td></tr>";
		$html.="<tr><th>Previous Due</th><td>$academyinvoice->previous_due</td></tr>";
		$html.="<tr><th>Payment Term Id</th><td>$academyinvoice->payment_term_id</td></tr>";
		$html.="<tr><th>Vat</th><td>$academyinvoice->vat</td></tr>";

		$html.="</table>";
		return $html;
	}
}
?>
