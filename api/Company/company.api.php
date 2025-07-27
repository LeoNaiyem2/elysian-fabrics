<?php
class CompanyApi
{
	public function __construct()
	{
	}
	function index()
	{
		echo json_encode(["company" => Company::all()]);
	}
	function pagination($data)
	{
		$page = $data->page;
		$perpage = $data->perpage;
		echo json_encode(["company" => Company::pagination($page, $perpage), "total_records" => Company::count()]);
	}
	function search($data)
	{
		echo json_encode(["company" => Company::filter($data->name)]);
	}
	function find($data)
	{
		echo json_encode(["company" => Company::find($data->id)]);
	}
	function delete($data)
	{
		Company::delete($data->id);
		echo json_encode(["success" => "yes"]);
	}
	function save($data, $file = [])
	{
		$company = new Company();
		$company->name = $data->name;
		$company->mobile = $data->mobile;
		$company->bin = $data->bin;
		$company->email = $data->email;
		$company->website = $data->website;
		$company->city = $data->city;
		$company->area = $data->area;
		$company->street_address = $data->street_address;
		$company->post_code = $data->post_code;
		$company->inactive = $data->inactive;
		$company->logo = $data->logo;

		$company->save();
		echo json_encode(["success" => "yes"]);
	}
	function update($data, $file = [])
	{
		$company = new Company();
		$company->id = $data->id;
		$company->name = $data->name;
		$company->mobile = $data->mobile;
		$company->bin = $data->bin;
		$company->email = $data->email;
		$company->website = $data->website;
		$company->city = $data->city;
		$company->area = $data->area;
		$company->street_address = $data->street_address;
		$company->post_code = $data->post_code;
		$company->inactive = $data->inactive;
		$company->logo = $data->logo;

		$company->update();
		echo json_encode(["success" => "yes"]);
	}
}
?>