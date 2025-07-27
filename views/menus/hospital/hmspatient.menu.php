<?php
	echo Menu::item([
		"id"=>"patient",
		"name"=>"Patient",
		"icon"=>iconClass([
			"adminlte"=>"nav-icon fa fa-wrench",
		    "staradmin"=>"mdi mdi-grid-large menu-icon",
			"intellect"=>"fas fa-chart-pie",
			"deskapp"=>"nav-icon fa fa-wrench"
		]),
		"route"=>"#patient",
		"links"=>[
			["route"=>"hmspatient/create",
			"text"=>"Create Patient",
			"icon"=>iconClass([
				"adminlte"=>"far fa-circle nav-icon",
				"deskapp"=>"far fa-circle nav-icon",
				"intellect"=>"far fa-circle nav-icon",
			])
		],
			["route"=>"hmspatient",
			"text"=>"Manage Patient",
			"icon"=>iconClass([
				"adminlte"=>"far fa-circle nav-icon",
				"deskapp"=>"far fa-circle nav-icon",
				"intellect"=>"far fa-circle nav-icon",
			])
		 ],


		 ["route"=>"hmspatient/search",
			"text"=>"Search Patient",
			"icon"=>iconClass([
				"adminlte"=>"far fa-circle nav-icon",
				"deskapp"=>"far fa-circle nav-icon",
				"intellect"=>"far fa-circle nav-icon",
			])
			],
		 ["route"=>"prescription/create",
		 "text"=>"Create Prescription",
		 "icon"=>iconClass([
			 "adminlte"=>"far fa-circle nav-icon",
			 "deskapp"=>"far fa-circle nav-icon",
			 "intellect"=>"far fa-circle nav-icon",
		 ])
	  ],


		]
	]);
