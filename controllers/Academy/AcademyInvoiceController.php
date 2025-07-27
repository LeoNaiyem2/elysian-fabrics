<?php
class AcademyInvoiceController extends Controller{
	public function __construct(){
		$this->module="Academy";
	}
	public function index(){
		$this->view();
	}
	public function create(){
		$this->view();
	}
public function save($data,$file){
	global $now;
	if(isset($data->create)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data->student_id)){
		$errors["student_id"]="Invalid student_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->invoice_total)){
		$errors["invoice_total"]="Invalid invoice_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data->discount)){
		$errors["discount"]="Invalid discount";
	}
	if(!preg_match("/^[\s\S]+$/",$data->paid_total)){
		$errors["paid_total"]="Invalid paid_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data->previous_due)){
		$errors["previous_due"]="Invalid previous_due";
	}
	if(!preg_match("/^[\s\S]+$/",$data->payment_term_id)){
		$errors["payment_term_id"]="Invalid payment_term_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->vat)){
		$errors["vat"]="Invalid vat";
	}

*/
		if(count($errors)==0){
			$academyinvoice=new AcademyInvoice();
		$academyinvoice->student_id=$data->student_id;
		$academyinvoice->created_at=$now;
		$academyinvoice->updated_at=$now;
		$academyinvoice->invoice_total=$data->invoice_total;
		$academyinvoice->discount=$data->discount;
		$academyinvoice->paid_total=$data->paid_total;
		$academyinvoice->previous_due=$data->previous_due;
		$academyinvoice->payment_term_id=$data->payment_term_id;
		$academyinvoice->vat=$data->vat;

			$academyinvoice->save();
		redirect();
		}else{
			 print_r($errors);
		}
	}
}
public function edit($id){
		$this->view(AcademyInvoice::find($id));
}
public function update($data,$file){
	global $now;
	if(isset($data->update)){
	$errors=[];
/*
	if(!preg_match("/^[\s\S]+$/",$data->student_id)){
		$errors["student_id"]="Invalid student_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->invoice_total)){
		$errors["invoice_total"]="Invalid invoice_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data->discount)){
		$errors["discount"]="Invalid discount";
	}
	if(!preg_match("/^[\s\S]+$/",$data->paid_total)){
		$errors["paid_total"]="Invalid paid_total";
	}
	if(!preg_match("/^[\s\S]+$/",$data->previous_due)){
		$errors["previous_due"]="Invalid previous_due";
	}
	if(!preg_match("/^[\s\S]+$/",$data->payment_term_id)){
		$errors["payment_term_id"]="Invalid payment_term_id";
	}
	if(!preg_match("/^[\s\S]+$/",$data->vat)){
		$errors["vat"]="Invalid vat";
	}

*/
		if(count($errors)==0){
			$academyinvoice=new AcademyInvoice();
			$academyinvoice->id=$data->id;
		$academyinvoice->student_id=$data->student_id;
		$academyinvoice->created_at=$now;
		$academyinvoice->updated_at=$now;
		$academyinvoice->invoice_total=$data->invoice_total;
		$academyinvoice->discount=$data->discount;
		$academyinvoice->paid_total=$data->paid_total;
		$academyinvoice->previous_due=$data->previous_due;
		$academyinvoice->payment_term_id=$data->payment_term_id;
		$academyinvoice->vat=$data->vat;

		$academyinvoice->update();
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
		AcademyInvoice::delete($id);
		redirect();
	}
	public function show($id){
		$this->view(AcademyInvoice::find($id));
	}
}
?>
