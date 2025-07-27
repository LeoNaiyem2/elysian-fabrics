<?php
class AcademyInvoiceApi{
	public function __construct(){
	}
	function index(){
		echo json_encode(["academy_invoices"=>AcademyInvoice::all()]);
	}
	function pagination($data){
		$page=$data->page;
		$perpage=$data->perpage;
		echo json_encode(["academy_invoices"=>AcademyInvoice::pagination($page,$perpage),"total_records"=>AcademyInvoice::count()]);
	}
	function search($data){
		echo json_encode(["academy_invoices"=>AcademyInvoice::filter($data->name)]);
	}
	function find($data){
		echo json_encode(["academyinvoice"=>AcademyInvoice::find($data->id)]);
	}
	function delete($data){
		AcademyInvoice::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data,$file=[]){

		$academyinvoice=new AcademyInvoice();
		$academyinvoice->student_id=$data->student_id;
		$academyinvoice->created_at=$data->created_at;
		$academyinvoice->updated_at=$data->updated_at;
		$academyinvoice->invoice_total=$data->invoice_total;
		$academyinvoice->discount=$data->discount;
		$academyinvoice->paid_total=$data->paid_total;
		$academyinvoice->previous_due=$data->previous_due;
		$academyinvoice->payment_term_id=$data->payment_term_id;
		$academyinvoice->vat=$data->vat;
		$invoice_id=$academyinvoice->save();
        
		$details=$data->details;

		foreach($details as $detail){

			$academyinvoicedetail=new AcademyInvoiceDetail();
			$academyinvoicedetail->invoice_id=$invoice_id;
			$academyinvoicedetail->service_id=$detail->service_id;
			$academyinvoicedetail->price=$detail->price;
			$academyinvoicedetail->discount=$detail->discount;
			$academyinvoicedetail->unit=$detail->unit;
			$academyinvoicedetail->vat=$detail->vat;	
			$academyinvoicedetail->save();

		}

          

		echo json_encode(["success" => "yes"]);
	}
	function update($data,$file=[]){
		$academyinvoice=new AcademyInvoice();
		$academyinvoice->id=$data->id;
		$academyinvoice->student_id=$data->student_id;
		$academyinvoice->created_at=$data->created_at;
		$academyinvoice->updated_at=$data->updated_at;
		$academyinvoice->invoice_total=$data->invoice_total;
		$academyinvoice->discount=$data->discount;
		$academyinvoice->paid_total=$data->paid_total;
		$academyinvoice->previous_due=$data->previous_due;
		$academyinvoice->payment_term_id=$data->payment_term_id;
		$academyinvoice->vat=$data->vat;

		$academyinvoice->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>
