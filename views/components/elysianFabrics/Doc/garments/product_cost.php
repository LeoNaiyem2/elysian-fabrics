<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garments Production Cost Report</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold; }
        th { background-color:rgba(117, 121, 117, 0.85); }
        input, select { margin: 5px; padding: 5px; }
    </style>
</head>
<body>
    <h2>Garments Production Cost Report</h2>
    <label>Filter by Date: <input type="date" id="filterDate"></label>
    <label>Filter by Product: 
        <select id="filterProduct">
            <option value="">All</option>
            <option value="Shirt">Shirt</option>
            <option value="Pant">Pant</option>
            <option value="Jacket">Jacket</option>
        </select>
    </label>
    <button onclick="filterData()">Apply Filters</button>
    
    <table>
        <thead>
            <tr>
                <th>Date</th>
                <th>Product</th>
                <th>Raw Material Cost</th>
                <th>Labor Cost</th>
                <th>Overhead Cost</th>
                <th>Total Cost</th>
            </tr>
        </thead>
        <tbody id="reportTable" style="color:black; ">
            <tr><td>2024-03-10</td><td>Shirt</td><td>200</td><td>150</td><td>150</td><td>500</td></tr>
            <tr><td>2024-03-11</td><td>Pant</td><td>300</td><td>200</td><td>200</td><td>700</td></tr>
            <tr><td>2024-04-12</td><td>Jacket</td><td>500</td><td>400</td><td>300</td><td>1200</td></tr>
            <tr><td>2024-05-13</td><td>Shirt</td><td>250</td><td>200</td><td>150</td><td>600</td></tr>
            <tr><td>2023-07-10</td><td>Shirt</td><td>200</td><td>150</td><td>150</td><td>500</td></tr>
            <tr><td>2022-09-11</td><td>Pant</td><td>300</td><td>200</td><td>200</td><td>700</td></tr>
            <tr><td>2021-010-12</td><td>Jacket</td><td>500</td><td>400</td><td>300</td><td>1200</td></tr>
            <tr><td>2020-011-13</td><td>Shirt</td><td>250</td><td>200</td><td>150</td><td>600</td></tr>
            <tr><td>2023-01-10</td><td>Shirt</td><td>200</td><td>150</td><td>150</td><td>500</td></tr>
            <tr><td>2022-07-11</td><td>Pant</td><td>300</td><td>200</td><td>200</td><td>700</td></tr>
            <tr><td>2020-08-12</td><td>Jacket</td><td>500</td><td>400</td><td>300</td><td>1200</td></tr>
            <tr><td>2025-02-13</td><td>Shirt</td><td>250</td><td>200</td><td>150</td><td>600</td></tr>
        </tbody>
    </table>

    <script>
        function filterData() {
            let date = document.getElementById("filterDate").value;
            let product = document.getElementById("filterProduct").value;
            
            let rows = document.querySelectorAll("#reportTable tr");
            rows.forEach(row => {
                let rowData = row.getElementsByTagName("td");
                let rowDate = rowData[0].textContent;
                let rowProduct = rowData[1].textContent;
                
                let showRow = true;
                if (date && rowDate !== date) showRow = false;
                if (product && rowProduct !== product) showRow = false;
                
                row.style.display = showRow ? "" : "none";
            });
        }
    </script>
</body>
</html>
