<?php $company = Company::find(2); ?>
<style>
  .receipt-container {
    max-width: 700px;
    margin: auto;
    border: 1px solid #ccc;
    padding: 30px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #fff;
  }

  .mr-header {
    text-align: center;
    margin-bottom: 20px;
  }

  .mr-header h2 {
    margin: 0;
  }

  .receipt-details {
    margin-bottom: 30px;
  }

  .receipt-details table {
    width: 100%;
    border-collapse: collapse;
  }

  .receipt-details td {
    padding: 5px;
  }

  .items-table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
  }

  .items-table th,
  .items-table td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: left;
  }

  .total {
    text-align: right;
    font-size: 18px;
    margin-top: 10px;
  }

  .footer {
    margin-top: 40px;
    display: flex;
    justify-content: space-between;
  }

  .signature {
    text-align: center;
    margin-top: 50px;
  }

  .signature-line {
    border-top: 1px solid #000;
    width: 200px;
    margin: auto;
    padding-top: 5px;
  }
</style>


<?php
$mr = $moneyreceipt;
//print_r($mr);
$customer = Customer::find($mr->customer_id);
$details = MoneyReceiptDetail::Filter($mr->id)
  //print_r($customer);
  ?>
<div class="receipt-container">
  <div class="mr-header">
    <img src='<?= $base_url ?>/img/<?= $company->logo ?>' width='100' />
    <div>
      <h4><?= $company->name ?></h4>
      <p><?= $company->street_address ?><br><?= $company->area ?>, <?= $company->city ?></p>
      <p>Phone: <?= $company->mobile ?> | <?= $company->email ?></p>
      <h3>Money Receipt</h3>
    </div>
  </div>

  <div class="receipt-details">
    <table>
      <tr>
        <td><strong>Receipt No:</strong> MR-<?= $mr->id ?></td>
        <td><strong>Date:</strong> <span id="date"><?= date("d-M-Y", strtotime($mr->created_at)) ?></span></td>
      </tr>
      <tr>
        <td><strong>Received From:</strong> <?= $customer->name ?></td>
        <td><strong>Payment Method:</strong> Cash</td>
      </tr>
    </table>
  </div>

  <table class="items-table">
    <thead>
      <tr>
        <th>Description</th>
        <th>Unit</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
      </tr>

      <?php
      $total = 0;
      foreach ($details as $item) {
        $p = Product::find($item->product_id);
        //print_r($p);
        echo "<tr>";
        echo "<td>$p->name</td>";
        echo "<td>$item->qty</td>";
        echo "<td>$item->price</td>";
        $lineTotal = $item->qty * $item->price;
        echo "<td>$lineTotal</td>";
        echo "<td></td>";
        echo "</tr>";

        $total += $lineTotal;
      }
      ?>


    </thead>
    <tbody id="tbody">
    </tbody>
  </table>

  <div class="total">
    <strong id="total">Total:<?= $total ?></strong>

  </div>

  <div class="footer">
    <div class="signature">
      <div class="signature-line">Customer Signature</div>
    </div>
  </div>


</div>