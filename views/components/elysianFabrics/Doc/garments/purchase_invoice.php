<?php $company = Company::find(2); ?>
<style>
  select {
    padding: 5px;
    min-width: 200px;
  }

  textarea {
    width: 100%;
  }
</style>

<!-- Main content -->
<div class="invoice p-3 mb-3">
  <!-- title row -->
  <div class="row">
    <div class="col-12">
      <h5>
        <img style="margin:-30px 0 10px 0;" src='<?= $base_url ?>/img/<?= $company->logo ?>' width='120' />

        <small class="float-right">Date: <?php echo date("d M Y") ?></small>
      </h5>
    </div>
    <!-- /.col -->
  </div>
  <!-- info row -->
  <div class="row invoice-info">
    <div class="col-sm-4 invoice-col">
      Warehouse<br>
      <?php
      echo Warehouse::html_select("cmbWarehouse");
      ?>
    </div>
    <!-- /.col -->
    <div class="col-sm-4 invoice-col">
      Supplier
      <address>
        <?php
        echo Supplier::html_select("cmbSupplier");
        ?>

        <div id="supplier-info"></div>

      </address>
      <div>
        Shipping Address:<br>
        <textarea id="txtShippingAddress"></textarea>
      </div>
    </div>
    <!-- /.col -->
    <div class="col-sm-4 invoice-col">

      <table>
        <tr>
          <td><b>Purchase ID:</b></td>
          <td><input type="text" style="width:60px" value="<?php echo Purchase::get_last_id() + 1; ?>" readonly /></td>
        </tr>
        <tr>
          <td><b>Purchase Date:</b></td>
          <td><input type="date" id="txtPurchaseDate" value=<?php echo date("d-m-Y"); ?> /></td>
        </tr>
        <tr>
          <td><b>Delivery Date:</b></td>
          <td><input type="date" id="txtDeliveryDate" value=<?php echo date("d-m-Y"); ?> /></td>
        </tr>

      </table>
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->

  <!-- Table row -->
  <div class="row">
    <div class="col-12 table-responsive">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>SN</th>
            <th>Material Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Discount</th>
            <th>Subtotal</th>
            <th><input type="button" id="clearAll" value="Clear" /></th>
          </tr>
          <tr>
            <th></th>
            <th>
              <?php
              echo Product::html_select();
              ?>
            </th>
            <th><input type="text" id="txtPrice" /></th>
            <th><input type="text" id="txtQty" /></th>
            <th><input type="text" id="txtDiscount" /></th>
            <th></th>
            <th><input type="button" id="btnAddToCart" value=" + " /></th>
          </tr>
        </thead>
        <tbody id="items">

        </tbody>
      </table>
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->

  <div class="row">
    <!-- accepted payments column -->
    <div class="col-6">
      <strong>Remark</strong><br>
      <textarea id="txtRemark"></textarea>
    </div>
    <!-- /.col -->
    <div class="col-6">
      <p class="lead">Amount Due 2/22/2014</p>

      <div class="table-responsive">
        <table class="table">
          <tbody>
            <tr>
              <th style="width:50%">Subtotal:</th>
              <td id="subtotal">0</td>
            </tr>
            <tr>
              <th style="width:50%">Tax:</th>
              <td id="vat">5%</td>
            </tr>


            <tr>
              <th>Total:</th>
              <td id="net-total">0</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->

  <!-- this row will not appear when printing -->
  <div class="row no-print">
    <div class="col-12">
      <a href="invoice-print.html" rel="noopener" target="_blank" class="btn btn-default"><i class="fas fa-print"></i>
        Print</a>
      <button type="button" id="btnProcessPurchase" class="btn btn-success float-right"><i
          class="far fa-credit-card"></i> Process Purchase </button>
      <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
        <i class="fas fa-download"></i> Generate PDF
      </button>
    </div>
  </div>
</div>
<!-- /.invoice -->


<script>
  $(function () {

    let base_url = `http://naiyem.intelsofts.com/Projects/core/core_elysianFabrics/api`;


    //Show calander in textbox
    // $("#txtPurchaseDate").datepicker({
    //   dateFormat: 'dd-mm-yy'
    // });
    // $("#txtDeliveryDate").datepicker({
    //   dateFormat: 'dd-mm-yy'
    // });


    const cart = new Cart("purchase");
    printCart();
    //Save into database table
    $("#btnProcessPurchase").on("click", function () {

      let warehouse_id = $("#cmbWarehouse").val();
      let supplier_id = $("#cmbSupplier").val();
      let purchase_date = $("#txtPurchaseDate").val();
      let delivery_date = $("#txtDeliveryDate").val();
      let discount = 0;
      let vat = 0;
      let shipping_address = $("#txtShippingAddress").val();
      let remark = $("#txtRemark").val();
      let order_total = $("#net-total").text();

      let products = cart.getCart();

      $.ajax({
        url: `${base_url}/purchase/save`,
        type: 'POST',
        data: {
          "warehouse_id": warehouse_id,
          "supplier_id": supplier_id,
          "purchase_date": purchase_date,
          "delivery_date": delivery_date,
          "shipping_address": shipping_address,
          "discount": discount,
          "vat": vat,
          "remark": remark,
          "purchase_total": order_total,
          "products": products
        },
        success: function (res) {
          console.log(res);
          cart.clearCart();
          $("#items").html("");
        }
      });

    });


    //Show customer other information
    $("#cmbSupplier").on("change", function () {
      $.ajax({
        url: `${base_url}/Supplier/find`,
        type: 'GET',
        data: {
          "id": $(this).val()
        },
        success: function (res) {
          let data = JSON.parse(res);
          //console.log(data.supplier);
          let supplier = data.supplier;

          $("#supplier-info").html(supplier.mobile + "<br>" + supplier.email);
        }
      });
    }); //    

    //Show customer other information
    $("#cmbProduct").on("change", function () {

      $.ajax({
        url: 'api/product/find',
        type: 'GET',
        data: {
          "id": $(this).val()
        },
        success: function (res) {
          let data = JSON.parse(res);
          let product = data.product;

          $("#txtPrice").val(product.offer_price);
          $("#txtQty").val(1);
        }
      });

    }); //  


    //Add item to bill temporarily

    $("#btnAddToCart").on("click", function () {
      let item_id = $("#cmbProduct").val();
      let name = $("#cmbProduct option:selected").text();

      let price = $("#txtPrice").val();
      let qty = $("#txtQty").val();
      let discount = $("#txtDiscount").val();

      let total_discount = discount * qty;
      let subtotal = price * qty - total_discount;

      let item = {
        "name": name,
        "item_id": item_id,
        "price": price,
        "qty": parseFloat(qty),
        "discount": discount,
        'total_discount': total_discount,
        "subtotal": subtotal
      };

      cart.save(item);
      printCart();

    });

    $("body").on("click", ".delete", function () {
      let id = $(this).data("id");
      cart.delItem(id)
      printCart();
    });

    $("#clearAll").on("click", function () {
      cart.clearCart();
      printCart();
    });


    //------------------Cart Functions----------//     


    function printCart() {

      let orders = cart.getCart();
      let sn = 1;
      let $bill = "";
      let subtotal = 0;

      if (orders != null) {

        orders.forEach(function (item, i) {
          //console.log(item.name);
          subtotal += item.price * item.qty - item.discount;

          let $html = "<tr>";
          $html += "<td>";
          $html += sn;
          $html += "</td>";
          $html += "<td>";
          $html += item.name;
          $html += "</td>";
          $html += "<td data-field='price'>";
          $html += item.price;
          $html += "</td>";
          $html += "<td data-field='qty'>";
          $html += item.qty;
          $html += "</td>";
          $html += "<td data-field='discount'>";
          $html += item.total_discount;
          $html += "</td>";
          $html += "<td data-field='subtotal'>";
          $html += item.subtotal;
          $html += "</td>";
          $html += "<td>";
          $html += "<input type='button' class='delete' data-id='" + item.item_id + "' value='-'/>";
          $html += "</td>";
          $html += "</tr>";
          $bill += $html;
          sn++;
        });
      }

      $("#items").html($bill);

      //Order Summary
      $("#subtotal").html(subtotal);
      let tax = (subtotal * 0.05).toFixed(2);
      $("#tax").html(tax);
      $("#net-total").html(parseFloat(subtotal) + parseFloat(tax));
    }



  });
</script>