<?php
Page::open();
Row::open();
Col::open();
Card::open(["title"=>"Create AcademyInvoice"]);
Html::link(["class"=>"btn btn-success", "route"=>"academyinvoice", "text"=>"Manage AcademyInvoice"]);
echo Form::open(["route"=>"academyinvoice/save"]);
	echo Form::input(["label"=>"Student","name"=>"student_id","table"=>"students"]);
	echo Form::input(["label"=>"Invoice Total","type"=>"text","name"=>"invoice_total"]);
	echo Form::input(["label"=>"Discount","type"=>"text","name"=>"discount"]);
	echo Form::input(["label"=>"Paid Total","type"=>"text","name"=>"paid_total"]);
	echo Form::input(["label"=>"Previous Due","type"=>"text","name"=>"previous_due"]);
	echo Form::input(["label"=>"Payment Term","name"=>"payment_term_id","table"=>"payment_terms"]);
	echo Form::input(["label"=>"Vat","type"=>"text","name"=>"vat"]);

echo Form::input(["name"=>"create","class"=>"btn btn-primary offset-2", "value"=>"Save", "type"=>"submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
