<?php
echo Menu::item([
	"id" => "Shipper",
	"name" => "Shipper",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "menu-icon mdi mdi-table",
		"intellect" => "fas fa-question-circle",
		"deskapp" => "nav-icon fa fa-wrench",
		"elysianFabrics" => "fa-solid fa-people-carry-box",
	]),
	"route" => "#Shipper",
	"links" => [
		[
			"route" => "shipper/create",
			"text" => "Create Shipper",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
		[
			"route" => "shipper",
			"text" => "Manage Shipper",
			"icon" => iconClass([
				"adminlte" => "nav-icon fa fa-wrench",
				"staradmin" => "menu-icon mdi mdi-table",
				"intellect" => "fas fa-question-circle",
				"deskapp" => "nav-icon fa fa-wrench"
			])
		],
	]
]);
