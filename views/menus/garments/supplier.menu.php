<?php
echo Menu::item([
	"id" => "Supplier",
	"name" => "Supplier",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "menu-icon mdi mdi-table",
		"intellect" => "fas fa-question-circle",
		"deskapp" => "nav-icon fa fa-wrench",
		"elysianFabrics" => "fa-solid fa-user-tie",
	]),
	"route" => "#Supplier",
	"links" => [
		[
			"route" => "supplier/create",
			"text" => "Create Supplier",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
		[
			"route" => "supplier",
			"text" => "Manage Supplier",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
	]
]);
