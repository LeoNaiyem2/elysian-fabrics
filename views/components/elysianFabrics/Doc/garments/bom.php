<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garments ERP - Full BOM</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            color: black;

        }

        th {
            background-color: #f4f4f4;
        }

        button {
            margin-top: 10px;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #218838;
        }

        .delete-btn {
            background-color: #dc3545;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }
    </style>
</head>

<body>
    <h2>Full Bill of Materials (BOM)</h2>
    <table id="bomTable">
        <thead>
            <tr>
                <th>Item Name</th>
                <th>Description</th>
                <th>Quantity</th>
                <th>Unit</th>
                <th>Price</th>
                <th>Total Cost</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Data will be inserted dynamically here -->
        </tbody>
    </table>

    <h3>Add New Item</h3>
    <input type="text" id="itemName" placeholder="Item Name" size="32">
    <input type="text" id="description" placeholder="Description" size="32">
    <input type="number" id="quantity" placeholder="Quantity">
    <input type="text" id="unit" placeholder="Unit" size="30">
    <input type="number" id="price" placeholder="Price">
    <button onclick="addItem()">Add Item</button>

    <script>
        let bomList = JSON.parse(localStorage.getItem('bomList')) || [];

        function saveData() {
            localStorage.setItem('bomList', JSON.stringify(bomList));
        }

        function loadData() {
            let table = document.getElementById('bomTable').getElementsByTagName('tbody')[0];
            table.innerHTML = '';
            bomList.forEach((item, index) => {
                let newRow = table.insertRow();
                newRow.innerHTML = `<td>${item.itemName}</td><td>${item.description}</td><td>${item.quantity}</td><td>${item.unit}</td><td>${item.price}</td><td>${item.totalCost}</td><td><button onclick="editRow(${index})">Edit</button> <button class='delete-btn' onclick="deleteRow(${index})">Delete</button></td>`;
            });
        }

        function addItem() {
            let itemName = document.getElementById('itemName').value;
            let description = document.getElementById('description').value;
            let quantity = document.getElementById('quantity').value;
            let unit = document.getElementById('unit').value;
            let price = document.getElementById('price').value;
            let totalCost = quantity * price;

            if (itemName && description && quantity && unit && price) {
                let newItem = {
                    itemName,
                    description,
                    quantity,
                    unit,
                    price,
                    totalCost
                };
                bomList.push(newItem);
                saveData();
                loadData();
                document.getElementById('itemName').value = '';
                document.getElementById('description').value = '';
                document.getElementById('quantity').value = '';
                document.getElementById('unit').value = '';
                document.getElementById('price').value = '';
            } else {
                alert('Please fill all fields');
            }
        }

        function deleteRow(index) {
            bomList.splice(index, 1);
            saveData();
            loadData();
        }

        function editRow(index) {
            let item = bomList[index];
            document.getElementById('itemName').value = item.itemName;
            document.getElementById('description').value = item.description;
            document.getElementById('quantity').value = item.quantity;
            document.getElementById('unit').value = item.unit;
            document.getElementById('price').value = item.price;
            deleteRow(index);
        }

        window.onload = loadData;
    </script>
</body>

</html>