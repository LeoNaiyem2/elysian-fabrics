<?php
echo Menu::item([
	"id" => "EcomCoupon",
	"name" => "Ecomcoupon",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "menu-icon mdi mdi-table",
		"intellect" => "fas fa-question-circle",
		"deskapp" => "nav-icon fa fa-wrench",
		"elysianFabrics" => "fa-solid fa-ticket",
	]),
	"route" => "#EcomCoupon",
	"links" => [
		[
			"route" => "ecomcoupon/create",
			"text" => "Create Ecomcoupon",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
		[
			"route" => "ecomcoupon",
			"text" => "Manage Ecomcoupon",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
	]
]);
