<?php 
session_start();
// if($_SESSION['token']!="idtoken123456"){
//   $_SESSION['klik'] = "detail_prod_eis.php";
//   header('Location: https://ti.pindad.com/login.php');
// }
include("variabel.php"); $aktif4 = "class='active drop-down'"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?=$detail_prod_workshop?></title>
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


    <!-- ======= Our Team Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Detail Produk</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li><a href="produk.php">Produk</a></li>
            <li>Detail Produk</li>
          </ol>
        </div>

      </div>
    </section><!-- End Our Team Section -->


<section class="testimonials" data-aos="fade-up">
      <div class="container">
<div class="owl-carousel testimonials-carousel">
<div class="testimonial-item">
  <h2>CYBER SECURITY (WORKSHOP)</h2>
  <hr>
<img src="assets/img/portfolio/CS1.png"  alt="">
<hr>

</div></div></div></section>





<?php 
if(FALSE){
?>
 <!-- ======= Portfolio Section ======= -->
    <section class="portfolio" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">Overview</li>
              <!-- <li data-filter=".filter-om" title="Organization Management">Modul OM</li>
              <li data-filter=".filter-pa" title="Personal Administration">Modul PA</li>
              <li data-filter=".filter-py" title="Payroll">Modul PY</li>
              <li data-filter=".filter-ess" title="Employe Self Service">Modul ESS</li> -->
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/2020-11-29_211553 eis.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/2020-11-29_211553 eis.png" data-gall="portfolioGallery" class="venobox" title="Fitur Home / Beranda"><h3 style="color: white;">Fitur Human Resource (HR)</h3> <p  style="color: white;">pihak eksekutif dalam mengakses  informasi data dan informasi dalam bentuk grafik dan data tabel yang berkaitan dengan Human Resource (HR).</p></a>
                <div>
                  
                  
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/2020-11-29_210956 eis finance.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/2020-11-29_210956 eis finance.png" data-gall="portfolioGallery" class="venobox" title="Fitur Respons Surat Masuk"><h3 style="color: white;">Fitur Finance</h3> <p  style="color: white;">pihak eksekutif dalam mengakses  informasi data dan informasi dalam bentuk grafik dan data tabel yang berkaitan dengan Keuangan (Finance).</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          





          

        </div>

      </div>
    </section><!-- End Portfolio Section -->

<?php 
}
?>



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