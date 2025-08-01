<?php
  $arr=[
		"id"=>"booking",
		"name"=>"Booking",		
		"icon"=>iconClass([
			"adminlte"=>"nav-icon fa fa-wrench",
		    "staradmin"=>"menu-icon mdi mdi-floor-plan",
			"intellect"=>"fas fa-calendar-alt",
			"deskapp"=>"nav-icon fa fa-wrench",
			"edumin"=>"nav-icon fa fa-wrench",
		]),
		"route"=>"#booking",
		"links"=>[
			["route"=>"booking/create",
			"text"=>"Create Booking",
			"icon"=>iconClass([
				"adminlte"=>"far fa-circle nav-icon",
				"deskapp"=>"far fa-circle nav-icon",
				"intellect"=>"far fa-circle nav-icon",
				"edumin"=>"nav-icon fa fa-wrench",
			])],
			["route"=>"booking",
			"text"=>"Manage Booking",
			"icon"=>iconClass([
				"adminlte"=>"far fa-circle nav-icon",
				"deskapp"=>"far fa-circle nav-icon",
				"intellect"=>"far fa-circle nav-icon",
				"edumin"=>"nav-icon fa fa-wrench",
			])],
		]
	];



