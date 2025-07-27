<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garment Business Net Profit Calculator</title>
    <style>
       

        .calculator-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            height: 600px;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
        }

        .input-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .result {
            margin-top: 20px;
            padding: 10px;
            background-color: #e0f7e0;
            border-radius: 4px;
            text-align: center;
        }

        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="calculator-container">
    <h1>Net Profit Calculator</h1>
    <div class="input-group" style="color:black; ">
        <label for="revenue">Revenue (Income from Sales):</label>
        <input type="number" id="revenue" placeholder="Enter Revenue" />
    </div>
    <div class="input-group" style="color:black; ">
        <label for="cogs">Cost of Goods Sold (COGS):</label>
        <input type="number" id="cogs" placeholder="Enter COGS" />
    </div>
    <div class="input-group" style="color:black; ">
        <label for="expenses">Operating Expenses:</label>
        <input type="number" id="expenses" placeholder="Enter Expenses" />
    </div>
    <div class="input-group" style="color:black; ">
        <label for="taxes">Taxes:</label>
        <input type="number" id="taxes" placeholder="Enter Taxes" />
    </div>
    <button class="btn" onclick="calculateNetProfit()">Calculate Net Profit</button>

    <div class="result" id="result" style="display: none;">
        <h3>Net Profit: <span id="net-profit-value"></span></h3>
    </div>

    <div class="error" id="error-message" style="display: none;">
        <p>Please fill out all fields with valid numbers.</p>
    </div>
</div>

<script>
    function calculateNetProfit() {
        // Get values from input fields
        let revenue = parseFloat(document.getElementById("revenue").value);
        let cogs = parseFloat(document.getElementById("cogs").value);
        let expenses = parseFloat(document.getElementById("expenses").value);
        let taxes = parseFloat(document.getElementById("taxes").value);

        // Check if any of the values are invalid
        if (isNaN(revenue) || isNaN(cogs) || isNaN(expenses) || isNaN(taxes)) {
            document.getElementById("error-message").style.display = "block";
            document.getElementById("result").style.display = "none";
            return;
        }

        // Calculate net profit
        let netProfit = revenue - cogs - expenses - taxes;

        // Display the result
        document.getElementById("net-profit-value").textContent = netProfit.toFixed(2);
        document.getElementById("result").style.display = "block";
        document.getElementById("error-message").style.display = "none";
    }
</script>

</body>
</html>
