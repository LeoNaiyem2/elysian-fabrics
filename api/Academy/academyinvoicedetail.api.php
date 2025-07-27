<?php
class AcademyInvoiceDetailApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["academy_invoice_details"=>AcademyInvoiceDetail::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["academy_invoice_details"=>AcademyInvoiceDetail::pagination($page,$perpage),"total_records"=>AcademyInvoiceDetail::count()]);
	}
	function search($data){
		echo json_encode(["academy_invoice_details"=>AcademyInvoiceDetail::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["academyinvoicedetail"=>AcademyInvoiceDetail::find($data->id)]);
	}
	function delete($data){
		AcademyInvoiceDetail::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){
		$academyinvoicedetail=new AcademyInvoiceDetail();
		$academyinvoicedetail->invoice_id=$data->invoice_id;
		$academyinvoicedetail->service_id=$data->service_id;
		$academyinvoicedetail->price=$data->price;
		$academyinvoicedetail->discount=$data->discount;
		$academyinvoicedetail->unit=$data->unit;
		$academyinvoicedetail->vat=$data->vat;

		$academyinvoicedetail->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$academyinvoicedetail=new AcademyInvoiceDetail();
		$academyinvoicedetail->id=$data->id;
		$academyinvoicedetail->invoice_id=$data->invoice_id;
		$academyinvoicedetail->service_id=$data->service_id;
		$academyinvoicedetail->price=$data->price;
		$academyinvoicedetail->discount=$data->discount;
		$academyinvoicedetail->unit=$data->unit;
		$academyinvoicedetail->vat=$data->vat;

		$academyinvoicedetail->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
