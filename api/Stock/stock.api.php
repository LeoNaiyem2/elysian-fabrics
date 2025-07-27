<?php
class StockApi
{
	public function __construct()
	{
	}

	function index()
	{
		echo json_encode(["stocks" => Stock::all()]);
	}

	function pagination($data)
	{
		$page = $data->page;
		$perpage = $data->perpage;
		echo json_encode([
			"stocks" => Stock::pagination($page, $perpage),
			"total_records" => Stock::count()
		]);
	}

	function search($data)
	{
		echo json_encode(["stocks" => Stock::filter($data->name)]);
	}

	function find($data)
	{
		echo json_encode(["stock" => Stock::find($data->id)]);
	}

	function delete($data)
	{
		Stock::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}

	function save($data, $file = [])
	{
		$stock = new Stock();
		$stock->product_id = $data->product_id;
		$stock->qty = $data->qty;
		$stock->transaction_type_id = $data->transaction_type_id;
		$stock->remark = $data->remark;
		$stock->warehouse_id = $data->warehouse_id;

		$stock->save();
		echo json_encode(["success" => "yes"]);
	}

	function update($data, $file = [])
	{
		$stock = new Stock();
		$stock->id = $data->id;
		$stock->product_id = $data->product_id;
		$stock->qty = $data->qty;
		$stock->transaction_type_id = $data->transaction_type_id;
		$stock->remark = $data->remark;
		$stock->warehouse_id = $data->warehouse_id;

		$stock->update();
		echo json_encode(["success" => "yes"]);
	}

	// ✅ NEW METHOD: Stock Balance with Pagination
	function balance($data)
	{
		global $db, $tx;

		$page = isset($data->page) ? (int) $data->page : 1;
		$perpage = isset($data->perpage) ? (int) $data->perpage : 10;
		$criteria = isset($data->criteria) ? $data->criteria : "";

		$page = max($page, 1);
		$top = ($page - 1) * $perpage;

		// Total rows
		$countQuery = $db->query("SELECT COUNT(DISTINCT product_id) AS total FROM {$tx}stocks s 
			JOIN {$tx}products p ON p.id = s.product_id 
			JOIN {$tx}transaction_types t ON t.id = s.transaction_type_id 
			$criteria");
		$totalRow = $countQuery->fetch_assoc();
		$totalRows = (int) $totalRow['total'];
		$totalPages = ceil($totalRows / $perpage);

		// Main query
		$query = "
			SELECT 
				p.id, 
				p.name AS product, 
				SUM(s.qty) AS qty 
			FROM 
				{$tx}stocks s 
			JOIN 
				{$tx}products p ON p.id = s.product_id 
			JOIN 
				{$tx}transaction_types t ON t.id = s.transaction_type_id 
			$criteria
			GROUP BY 
				s.product_id 
			LIMIT 
				$top, $perpage
		";

		$result = $db->query($query);

		$stocks = [];
		while ($row = $result->fetch_assoc()) {
			$stocks[] = [
				"id" => $row['id'],
				"product" => $row['product'],
				"qty" => $row['qty']
			];
		}

		echo json_encode([
			"current_page" => $page,
			"per_page" => $perpage,
			"total_pages" => $totalPages,
			"total_rows" => $totalRows,
			"stocks" => $stocks
		]);
	}
}
?>