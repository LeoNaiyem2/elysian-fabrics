<?php
echo Menu::item([
	"id" => "Account",
	"name" => "Account",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "menu-icon mdi mdi-table",
		"intellect" => "fas fa-question-circle",
		"deskapp" => "nav-icon fa fa-wrench",
		"elysianFabrics" => "fa-solid fa-calculator"
	]),
	"route" => "#Account",
	"links" => [
		[
			"route" => "moneyreceipt/create",
			"text" => "Create MR",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
		[
			"route" => "moneyreceipt",
			"text" => "Manage MR",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
		[
			"route" => "invoice/create",
			"text" => "Create Invoice",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
		[
			"route" => "invoice",
			"text" => "Manage Invoice",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
	]
]);
