<?php
Page::open();
Row::open();
Col::open();
Card::open(["title" => "Create MfgProduction"]);
Html::link(["class" => "btn btn-success", "route" => "mfgproduction", "text" => "Manage MfgProduction"]);
echo Form::open(["route" => "mfgproduction/save"]);
echo Form::input(["label" => "Production Datetime", "type" => "date", "name" => "production_datetime"]);
echo Form::input(["label" => "Bom", "name" => "bom_id", "table" => "mfg_boms"]);
echo Form::input(["label" => "Qty", "type" => "text", "name" => "qty"]);
echo Form::input(["label" => "Labor Cost", "type" => "text", "name" => "labor_cost"]);
echo Form::input(["label" => "Manager", "name" => "manager_id", "table" => "production_manager"]);
echo Form::input(["label" => "Total Cost", "type" => "text", "name" => "total_cost"]);
echo Form::input(["label" => "Product", "name" => "product_id", "table" => "products"]);
echo Form::input(["label" => "Uom", "name" => "uom_id", "table" => "uoms"]);

echo Form::input(["name" => "create", "class" => "btn btn-primary offset-2", "value" => "Save", "type" => "submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
