<?php
class InvoiceApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["invoices"=>Invoice::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["invoices"=>Invoice::pagination($page,$perpage),"total_records"=>Invoice::count()]);
	}
	function search($data){
		echo json_encode(["invoices"=>Invoice::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["invoice"=>Invoice::find($data->id)]);
	}
	function delete($data){
		Invoice::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$invoice=new Invoice();
		$invoice->customer_id=$data->customer_id;
		$invoice->created_at=$data->created_at;
		$invoice->remark=$data->remark;
		$invoice->payment_term=$data->payment_term;
		$invoice->updated_at=$data->updated_at;
		$invoice->invoice_total=$data->invoice_total;
		$invoice->paid_total=$data->paid_total;
		$invoice->previous_due=$data->previous_due;

		$invoice_id=$invoice->save();

		$items=$data->items;

		foreach($items as $item){

			$detail=new InvoiceDetail();
			$detail->invoice_id=$invoice_id;
			$detail->product_id=$item->product_id;
			$detail->price=$item->price;
			$detail->qty=$item->qty;
			$detail->discount=$item->discount;
			$detail->vat=$item->vat;
			$detail->save();

		}


		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$invoice=new Invoice();
		$invoice->id=$data->id;
		$invoice->customer_id=$data->customer_id;
		$invoice->created_at=$data->created_at;
		$invoice->remark=$data->remark;
		$invoice->payment_term=$data->payment_term;
		$invoice->updated_at=$data->updated_at;
		$invoice->invoice_total=$data->invoice_total;
		$invoice->paid_total=$data->paid_total;
		$invoice->previous_due=$data->previous_due;

		$invoice->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
