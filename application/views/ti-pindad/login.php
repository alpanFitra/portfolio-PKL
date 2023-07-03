<?php 

$error_message = "";
session_start();
unset($_SESSION['token']);
if(isset($_POST['submit'])){
  $data = $_POST['email'].$_POST['password'];

  if($data == "ti@pindad.compindad2022!"){
     
    $_SESSION['token'] = "idtoken123456";
    $_SESSION['username'] = "Member";
    // $klik = $_SESSION['klik'];
    $error_message = "Login Sukses";
    $warna = "green";
    header('Location: ./');
  }else{
    $error_message = "Maaf Username atau Password tidak sesuai";
    $warna = "red";
  }

  

}
include("variabel.php");  
$aktif7 = "class='active'";
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Contact - Moderna Bootstrap Template</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Moderna - v2.1.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container">

      <?php include("menu.php"); ?>

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Login</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Login</li>
          </ol>
        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          

          <div class="col-lg-12">
            <form action="login" method="post" role="form" >
              <?php if($error_message == ""){ ?>
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Username" data-rule="email" data-msg="Please enter a valid email" />
                  
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
                  <input type="password" class="form-control" name="password" id="password" placeholder="Password"  />
                  <div class="validate"></div>
                </div>
              </div>
            <?php } ?>
              <div class="form-group">
               
                <div class="validate"></div>
              </div>
              
              <div class="mb-3">
                <!-- <div class="loading">Loading</div> -->
                <!-- <div class="error-message"></div> -->
                <div class="text-center">
                  <?php 
                  // background: #e91e63;
                    if($error_message != ""){
                      echo "<button style='
                    background: $warna;
                    border: 0;
                    padding: 10px 24px;
                    color: #fff;
                    transition: 0.4s;
                '> $error_message</button>"; 
                    }
                  ?>
                  
                </div>
              </div>
              <div  class="text-center">
                <?php 
                    if($error_message == ""){
                      echo "<input name = 'submit' type='submit' style='
                    background: #68A4C4;
                    border: 0;
                    padding: 10px 24px;
                    color: #fff;
                    transition: 0.4s;
                '>"; 
                    }
                  ?>
                
                
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

   

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php include("footer.php"); ?>
  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>