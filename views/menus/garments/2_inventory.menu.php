<?php
echo Menu::item([
	"id" => "inventory",
	"name" => "Inventory",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "menu-icon mdi mdi-table",
		"intellect" => "fas fa-question-circle",
		"deskapp" => "nav-icon fa fa-wrench",
		"elysianFabrics" => "fa-solid fa-warehouse	"
	]),
	"route" => "#inventory",
	"links" => [
		// [
		// 	"route" => "rawmaterial/create",
		// 	"text" => "Purchase Raw Materials",
		// 	"icon" => iconClass([
		// 		"adminlte" => "far fa-circle nav-icon",
		// 		"deskapp" => "far fa-circle nav-icon",
		// 		"intellect" => "far fa-circle nav-icon",
		// 	])
		// ],
		// [
		// 	"route" => "rawmaterial",
		// 	"text" => "Manage Row Materials",
		// 	"icon" => iconClass([
		// 		"adminlte" => "far fa-circle nav-icon",
		// 		"deskapp" => "far fa-circle nav-icon",
		// 		"intellect" => "far fa-circle nav-icon",
		// 	])
		// ],
		[
			"route" => "mfgbom/create",
			"text" => "Create BOM",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
		[
			"route" => "mfgbom",
			"text" => "Manage BOM",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
		[
			"route" => "product/create",
			"text" => "Build Product",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
		[
			"route" => "product",
			"text" => "Manage Product",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
		[
			"route" => "productcategory/create",
			"text" => "Create Category",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],

		[
			"route" => "productcategory",
			"text" => "Manage Category",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
	]
]);
