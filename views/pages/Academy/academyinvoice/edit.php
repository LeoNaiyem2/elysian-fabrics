<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Edit AcademyInvoice"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyinvoice", "text"=>"Manage AcademyInvoice"]);
echo Form::open(["route"=>"academyinvoice/update"]);
	echo Form::input(["label"=>"Id","type"=>"hidden","name"=>"id","value"=>"$academyinvoice->id"]);
	echo Form::input(["label"=>"Student","name"=>"student_id","table"=>"students","value"=>"$academyinvoice->student_id"]);
	echo Form::input(["label"=>"Invoice Total","type"=>"text","name"=>"invoice_total","value"=>"$academyinvoice->invoice_total"]);
	echo Form::input(["label"=>"Discount","type"=>"text","name"=>"discount","value"=>"$academyinvoice->discount"]);
	echo Form::input(["label"=>"Paid Total","type"=>"text","name"=>"paid_total","value"=>"$academyinvoice->paid_total"]);
	echo Form::input(["label"=>"Previous Due","type"=>"text","name"=>"previous_due","value"=>"$academyinvoice->previous_due"]);
	echo Form::input(["label"=>"Payment Term","name"=>"payment_term_id","table"=>"payment_terms","value"=>"$academyinvoice->payment_term_id"]);
	echo Form::input(["label"=>"Vat","type"=>"text","name"=>"vat","value"=>"$academyinvoice->vat"]);

echo Form::input(["name"=>"update","class"=>"btn btn-success offset-2" , "value"=>"Save Chanage", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
