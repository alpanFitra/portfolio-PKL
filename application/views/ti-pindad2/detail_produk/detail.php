<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TI ~ Pindad</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="https://pindad.com/assets/img/favicon.png" rel="icon">
  <link href="https://pindad.com/assets/img/favicon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/vendor/aos/aos.css" rel="stylesheet" />
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Delicious - v4.7.1
  * Template URL: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center fixed-top topbar-transparent">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-center justify-content-lg-start">
      <i class="bi bi-envelope d-flex align-items-center"><span style="color: gray;">itmarketing@pindad.com</span></i>
      <i class="bi bi-clock ms-4 d-none d-lg-flex align-items-center"><span style="color: gray;">Senin-Jum'at: 08:30 AM - 04:30 PM</span></i>
    </div>
  </section>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <div class="logo me-auto">
        
        <!-- Uncomment below if you prefer to use an image logo -->
        <a href="<?php echo base_url(); ?>template/<?php echo template(); ?>/template.php" style="color: white;"><img src="https://ti.pindad.com/assets/img/logo-pindad.png" alt="" class="img-fluid"> PT Pindad</a>
         <!-- <h1><a href="index.html">PT Pindad</a></h1> -->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto " href="<?php echo base_url('main') ?>">Home</a></li>
          <li><a class="nav-link scrollto" href="<?php echo base_url('#about') ?>">About</a></li>
          <li><a class="nav-link scrollto" href="<?php echo base_url('#produk') ?>">Produk</a></li>
          <li><a class="nav-link scrollto" href="<?php echo base_url('#portfolio') ?>">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="<?php echo base_url('#events') ?>">Events</a></li>

        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      <a href="<?php echo base_url('main/#contact') ?>" class="book-a-table-btn scrollto">Kontak Kami</a>
      <a href="<?php echo base_url('administrator'); ?>" class="book-a-table-btn scrollto">Login</a>
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <?php 
          // $produk = $this->model_produk->detail_produk()->result_array();
            foreach($produk as $prd){
          
          ?>
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">
        
        <h2><?php echo $prd->detail_nama; ?></h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">

                <div class="swiper-slide">
                  <img src="<?php echo base_url(); ?>template/<?php echo template(); ?>/produk/img/<?php echo $prd->gambar; ?>" alt="">
                </div>

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <h3>Project information</h3>
              <ul>
                <li><strong>Kategory</strong>: <?php echo $prd->kategori; ?></li>
                <li><strong>Client</strong>: <?php echo $prd->client; ?></li>
                <li><strong>Project date</strong>: <?php echo $prd->project_date; ?></li>
                <li><strong>Project URL</strong>: <?php echo $prd->project_url; ?></li>
              </ul>
            </div>
            <div class="portfolio-description">
              <h2><?php echo $prd->detail_nama; ?></h2>
              <p>
              <?php echo $prd->detail_produk; ?>
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->
    <?php } ?>

  </main><!-- End #main -->
   <!-- ======= Footer ======= -->
  