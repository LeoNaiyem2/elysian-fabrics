<?php
Page::open();
Row::open();
Col::open();
Card::open(["title" => "Create Stock"]);
Html::link(["class" => "btn btn-success", "route" => "stock", "text" => "Manage Stock"]);
echo Form::open(["route" => "stock/save"]);
echo Form::input(["label" => "Product", "name" => "product_id", "table" => "products"]);
echo Form::input(["label" => "Qty", "type" => "text", "name" => "qty"]);
echo Form::input(["label" => "Stock Type", "name" => "transaction_type_id", "table" => "transaction_types"]);
echo Form::input(["label" => "Remark", "type" => "textarea", "name" => "remark"]);
echo Form::input(["label" => "Warehouse", "name" => "warehouse_id", "table" => "warehouses"]);

echo Form::input(["name" => "create", "class" => "btn btn-primary offset-2", "value" => "Save", "type" => "submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
