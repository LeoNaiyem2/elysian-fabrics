<!-- jQuery -->
<script src="<?= asset() ?>/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= asset() ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= asset() ?>/dist/js/adminlte.min.js"></script>
<script>
  $(function () {

    rememberStatus();

    $('#txtUsername').on("input", function () {
      remember();
    });

    $('#txtPassword').on("input", function () {
      remember();
    });

    $('#chkRemember').click(function () {
      remember();
    });

    function remember() {
      if ($('#chkRemember').is(':checked')) {
        // save username and password
        localStorage.username = $('#txtUsername').val().trim();
        localStorage.pass = $('#txtPassword').val().trim();
        localStorage.chkbox = $('#chkRemember').val();
      } else {
        localStorage.username = '';
        localStorage.pass = '';
        localStorage.chkbox = '';
      }
    }

    function rememberStatus() {
      if (localStorage.chkbox && localStorage.chkbox != '') {
        $('#chkRemember').attr('checked', 'checked');
        $('#txtUsername').val(localStorage.username);
        $('#txtPassword').val(localStorage.pass);
      } else {
        $('#chkRemember').removeAttr('checked');
        $('#txtUsername').val('');
        $('#txtPassword').val('');
      }
    }

  });

  let colors = ["red", "green", "blue", "yellow", "pink", "purple"];
  let wallpapers = ["images.jpeg", "images (1).jpeg"];
  let body = document.querySelector("body");
  let rand = Math.floor(Math.random() * wallpapers.length);
  body.style.cssText = `background-image:url('img/wallpapers/${wallpapers[rand]}');background-size:cover;background-position:center`;

  setInterval(() => {


    //let rand=Math.floor(Math.random() * colors.length);
    //body.style.cssText=`background-color:${colors[rand]}`;

    rand = Math.floor(Math.random() * wallpapers.length);
    body.style.cssText = `background-image:url('img/wallpapers/${wallpapers[rand]}');background-size:cover;background-position:center`;

  }, 7000);

</script>
</body>

</html>