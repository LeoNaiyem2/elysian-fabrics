<?php
echo Menu::item([
	"id" => "logout",
	"name" => "Logout",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "menu-icon mdi mdi-layers-outline",
		"intellect" => "nav-icon fa fa-wrench",
		"deskapp" => "micon bi bi-textarea-resize",
		"elysianFabrics" => "fa-solid fa-arrow-right-from-bracket",
	]),
	"route" => "$base_url/logout.php"
]);
