</div>
   <!-- end container -->
</main>
  <!-- ===============================================-->
  <!--    JavaScripts-->
  <!-- ===============================================-->

  <script src="<?=asset()?>/vendors/popper/popper.min.js"></script>
  <script src="<?=asset()?>/vendors/bootstrap/bootstrap.min.js"></script>
  <script src="<?=asset()?>/vendors/anchorjs/anchor.min.js"></script>
  <script src="<?=asset()?>/vendors/is/is.min.js"></script>
  <script src="<?=asset()?>/vendors/chart/chart.min.js"></script>
  <script src="<?=asset()?>/vendors/countup/countUp.umd.js"></script>
  <script src="<?=asset()?>/vendors/echarts/echarts.min.js"></script>
  <script src="<?=asset()?>/vendors/dayjs/dayjs.min.js"></script>
  <script src="<?=asset()?>/vendors/fontawesome/all.min.js"></script>
  <script src="<?=asset()?>/vendors/lodash/lodash.min.js"></script>
  <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
  <script src="<?=asset()?>/vendors/list.js/list.min.js"></script>
  <script src="<?=asset()?>/assets/js/theme.js"></script>
  <script src="<?=asset()?>/vendors/select2-4.1.0/js/select2.min.js"></script>


  <?php
    include("javascript.php");
  ?>

<script>
   $(function(){       
       $("select.search").select2();
   });
</script>
</body>

</html>