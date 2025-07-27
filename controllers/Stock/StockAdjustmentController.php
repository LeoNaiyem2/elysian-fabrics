<?php
class StockAdjustmentController extends Controller{
	public function __construct(){
         $this->module="Stock";
	}
    public function index(){
		$this->view();
	}

    public function create(){
		$this->view();
    }
}