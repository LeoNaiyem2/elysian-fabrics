<?php
echo Menu::item([
	"id" => "system",
	"name" => "System",
	"icon" => iconClass([
		"adminlte" => "nav-icon fa fa-wrench",
		"staradmin" => "menu-icon mdi mdi-card-text-outline",
		"intellect" => "fas fa-code-branch",
		"deskapp" => "nav-icon fa fa-wrench",
		"elysianFabrics" => "fa-solid fa-gear",
	]),
	"route" => "#system",
	"links" => [
		[
			"route" => "System/ChangeTheme",
			"text" => "Change Theme",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
		[
			"route" => "Themes",
			"text" => "Manage Themes",
			"icon" => iconClass([
				"adminlte" => "far fa-circle nav-icon",
				"deskapp" => "far fa-circle nav-icon",
				"intellect" => "far fa-circle nav-icon",
			])
		],
	]
]);
