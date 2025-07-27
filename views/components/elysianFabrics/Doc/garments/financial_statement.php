<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garment Business Balance Sheet</title>
    <style>
        .balance-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            box-sizing: border-box;
            height: 600px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
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
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        .result {
            margin-top: 20px;
            padding: 10px;
            background-color: #d5f5e3;
            border-radius: 4px;
            text-align: center;
        }

        .error {
            color: red;
            text-align: center;
            font-weight: bold;
        }

        .balance-sheet {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .balance-sheet div {
            width: 48%;
        }

        .balance-sheet h3 {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="balance-container">
    <h1>Garment Business Balance Sheet</h1>
    <div class="input-group" style="color:black; ">
        <label for="cash-assets">Cash & Bank Balances (in USD):</label>
        <input type="number" id="cash-assets" placeholder="Enter cash and bank balances" />
    </div>
    <div class="input-group" style="color:black; ">
        <label for="inventory">Inventory Value (in USD):</label>
        <input type="number" id="inventory" placeholder="Enter inventory value" />
    </div>
    <div class="input-group" style="color:black; ">
        <label for="receivables">Accounts Receivable (in USD):</label>
        <input type="number" id="receivables" placeholder="Enter accounts receivable" />
    </div>
    <div class="input-group" style="color:black; ">
        <label for="liabilities">Total Business Liabilities (in USD):</label>
        <input type="number" id="liabilities" placeholder="Enter total business liabilities" />
    </div>
    <div class="input-group" style="color:black; ">
        <label for="owners-equity">Owner's Equity Contribution (in USD):</label>
        <input type="number" id="owners-equity" placeholder="Enter owner's equity" />
    </div>
    <button class="btn" onclick="calculateBalanceSheet()">Generate Balance Sheet</button>

    <div class="result" id="result" style="display: none;">
        <div class="balance-sheet">
            <div>
                <h3>Total Assets:</h3>
                <p id="assets-value"></p>
            </div>
            <div>
                <h3>Total Liabilities:</h3>
                <p id="liabilities-value"></p>
            </div>
        </div>
        <div class="balance-sheet">
            <div>
                <h3>Owner's Equity:</h3>
                <p id="owners-equity-value"></p>
            </div>
        </div>
    </div>

    <div class="error" id="error-message" style="display: none;">
        <p id="error-text">Please fill out all fields with valid numbers.</p>
    </div>
</div>

<script>
    function calculateBalanceSheet() {
        let cashAssets = parseFloat(document.getElementById("cash-assets").value);
        let inventory = parseFloat(document.getElementById("inventory").value);
        let receivables = parseFloat(document.getElementById("receivables").value);
        let liabilities = parseFloat(document.getElementById("liabilities").value);
        let ownersEquity = parseFloat(document.getElementById("owners-equity").value);

        if (isNaN(cashAssets) || isNaN(inventory) || isNaN(receivables) || isNaN(liabilities) || isNaN(ownersEquity)) {
            document.getElementById("error-text").textContent = "Please enter valid numerical values for all fields.";
            document.getElementById("error-message").style.display = "block";
            document.getElementById("result").style.display = "none";
            return;
        }

        let totalAssets = cashAssets + inventory + receivables;
        let calculatedAssets = liabilities + ownersEquity;

        document.getElementById("assets-value").textContent = totalAssets.toFixed(2) + " USD";
        document.getElementById("liabilities-value").textContent = liabilities.toFixed(2) + " USD";
        document.getElementById("owners-equity-value").textContent = ownersEquity.toFixed(2) + " USD";

        if (totalAssets === calculatedAssets) {
            document.getElementById("result").style.display = "block";
            document.getElementById("error-message").style.display = "none";
        } else {
            document.getElementById("error-text").textContent = "Balance Sheet Error: Total Assets must be equal to Total Liabilities + Owner's Equity.";
            document.getElementById("error-message").style.display = "block";
            document.getElementById("result").style.display = "none";
        }
    }
</script>

</body>
</html>
