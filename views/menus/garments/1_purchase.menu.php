<?php
Menu::item([
	"id" => "purchase",
	"name" => "Purchase",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "mdi mdi-grid-large menu-icon",
		"intellect" => "fas fa-palette",
		"deskapp" => "nav-icon fa fa-wrench",
		"elysianFabrics" => "fa-solid fa-money-check-dollar",
	]),
	"route" => "#purchase",
	"links" => [
		[
			"route" => "purchase/create",
			"text" => "Purchase Raw Materials",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
		[
			"route" => "purchase",
			"text" => "Manage Purchase",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
	]
]);
