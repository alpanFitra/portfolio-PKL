
<?php 
// header('location: home');

// session_start();
// $_SESSION['token']="idtoken123456";
$aktif = $this->uri->segment(2); 
$aktifx = $this->uri->segment(3);
include("variabel.php"); 

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?=$judul?></title>
  
  <meta name="description" content="<?php echo $description; ?>">
  <meta name="keywords" content="<?php echo $keywords; ?>">
  <meta content="" name="keywords">
  <link rel="canonical" href="<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"/>
  <?php 

  
  if ($this->uri->segment(1)=='berita' AND $this->uri->segment(2)=='detail'){ $rows = $this->model_utama->view_where('berita',array('judul_seo' => $this->uri->segment(3)))->row_array();
     echo '<meta property="og:title" content="'.$title.'" />
       <meta property="og:type" content="article" />
       <meta property="og:url" content="'.base_url().''.$this->uri->segment(3).'" />
       <meta property="og:image" content="'.base_url().'asset/foto_berita/'.$rows['gambar'].'" />
       <meta property="og:description" content="'.$description.'"/>';
  } ?>
  <!-- Favicons -->
  <link rel="shortcut icon" href="<?php echo base_url(); ?>asset/images/<?php echo favicon(); ?>" />
  <!-- <link href="assets/img/favicon.png" rel="icon"> -->
  <!-- <link href="<?=base_url()?>assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?=base_url()?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?=base_url()?>assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<?=base_url()?>assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="<?=base_url()?>assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?=base_url()?>assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="<?=base_url()?>assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="<?=base_url()?>assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?=base_url()?>assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Moderna - v2.1.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<!-- ======= Header ======= -->
<?php 
if($this->uri->segment(2)==""){ ?>
  <header id="header" class="fixed-top header-transparent">
      <div class="container">
  <?php include("menu.php"); ?>
      </div>
  </header><!-- End Header -->
<?php }else{ ?>
  <header id="header" class="fixed-top ">
    <div class="container">
      <?php include("menu.php"); ?>
    </div>
  </header><!-- End Header -->
<?php } ?>









<?php echo $contents; ?>













  <!-- ======= Footer ======= -->
  <?php include("footer.php"); ?>
  <!-- End Footer -->
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src=<?=base_url()?>"assets/vendor/jquery/jquery.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/php-email-form/validate.js"></script>
  <script src="<?=base_url()?>assets/vendor/venobox/venobox.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/counterup/counterup.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<?=base_url()?>assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="<?=base_url()?>assets/js/main.js"></script>

</body>

</html>
