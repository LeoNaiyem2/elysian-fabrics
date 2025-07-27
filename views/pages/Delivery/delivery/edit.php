<?php
Page::open();
Row::open();
Col::open();
Card::open(["title" => "Edit Delivery"]);
Html::link(["class" => "btn btn-success", "route" => "delivery", "text" => "Manage Delivery"]);
echo Form::open(["route" => "delivery/update"]);
echo Form::input(["label" => "Id", "type" => "hidden", "name" => "id", "value" => "$delivery->id"]);
echo Form::input(["label" => "Create At", "type" => "date", "name" => "create_at", "value" => "$delivery->create_at"]);
echo Form::input(["label" => "Order", "name" => "order_id", "value" => "$delivery->order_id"]);
echo Form::input(["label" => "Person", "name" => "person_id", "table" => "persons", "value" => "$delivery->person_id"]);
echo Form::input(["label" => "Shipper", "name" => "shipper_id", "table" => "shippers", "value" => "$delivery->shipper_id"]);
echo Form::input(["label" => "Shipped At", "type" => "date", "name" => "shipped_at", "value" => "$delivery->shipped_at"]);
echo Form::input(["label" => "Delivery Status", "name" => "delivery_status_id", "table" => "delivery_status", "value" => "$delivery->delivery_status_id"]);

echo Form::input(["name" => "update", "class" => "btn btn-success offset-2", "value" => "Save Chanage", "type" => "submit"]);
echo Form::close();
Card::close();
Col::close();
Row::close();
Page::close();
