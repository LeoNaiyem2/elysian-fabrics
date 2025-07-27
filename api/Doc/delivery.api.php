<?php

class DeliveryApi{

  static function save($data){        
            
        $delivery=new Delivery();
        $delivery->create_at=date("Y-m-d",strtotime($data->create_at));
        $delivery->order_id=$data->order_id;
        $delivery->person_id=$data->person_id;
        $delivery->shipper_id=$data->shipper_id;
        $delivery->shipped_at=date("Y-m-d",strtotime($data->shipped_at));
        $delivery->delivery_status_id=$data->delivery_status_id;	
        	 
        $delivery_id=$delivery->save();
    
       //$now=date("Y-m-d H:i:s"); 

      $products=$data->products;

     foreach($products as $product){

      $deliverydetail=new DeliveryDetail();
			$deliverydetail->delivery_id=$delivery_id;
			$deliverydetail->product_id=$product->product_id;
			$deliverydetail->qty=$product->qty;
			$deliverydetail->price=$product->price;
			$deliverydetail->save();      

      $stock=new Stock();//1 for sales order      
      $stock->product_id=$product->product_id;
      $stock->qty=-$product->qty;
      $stock->transaction_type_id=2;//1 for sales, 2 
      $stock->remark="Sales Delivery";
      $stock->save();

      
     }//end loop

   
    echo json_encode(["status"=>"success"]);  
  

  }//end function


  function find($data){
    
    $order_id=$data->id;
    $order=Order::find($order_id);
    $customer=Customer::find($order->customer_id);
    $products=OrderDetail::all_by_order_id($order_id);

		echo json_encode(["order"=>$order,"customer"=>$customer,"products"=>$products]);
	}


  function getOrderDetails($data){
    
    // $order_id=$data->id;
    // $order=Order::find($order_id);
    // $customer=Customer::find($order->customer_id);
    $products=OrderDetail::all_by_order_id($data->id);

		echo json_encode(["products"=>$products]);
	}
   
}//end class
?>