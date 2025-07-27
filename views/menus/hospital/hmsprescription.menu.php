<?php
	echo Menu::item([
		"id"=>"prescription",
		"name"=>"Prescription",
		"icon"=>"nav-icon fa fa-wrench",
		"route"=>"#prescription",
		"links"=>[
			["route"=>"hmsprescription/create","text"=>"Create Prescription","icon"=>"far fa-circle nav-icon"],
			["route"=>"hmsprescription","text"=>"Manage Prescription","icon"=>"far fa-circle nav-icon"],
			
		]
	]);
