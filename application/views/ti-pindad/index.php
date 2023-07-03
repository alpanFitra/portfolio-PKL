
<?php 
// header('location: home');

// session_start();
// $_SESSION['token']="idtoken123456";
include("variabel.php"); $aktif1 = "class='active'"; 

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?=$home?></title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link rel="shortcut icon" href="assets/img/favicon.png">
  <!-- <link href="assets/img/favicon.png" rel="icon"> -->
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
  <header id="header" class="fixed-top header-transparent">
    <div class="container">

<?php include("menu.php"); ?>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">

      <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">TEKNOLOGI INFORMASI <br><span>PT. PINDAD (PERSERO)</span></h2>
          <p class="animate__animated animate__fadeInUp">Grab Your Own Project</p>
          <!-- <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a> -->
        </div>
      </div>

      <!-- Slide 2 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">SELAMAT DATANG</h2>
          <p class="animate__animated animate__fadeInUp">TI-Pindad menawarkan jasa pembuatan website berkualitas dengan fitur professional. Kami melayani pembuatan website untuk keperluan khusus bagi perusahan, organisasi, lembaga pemerintah, personal, komunitas, organisasi atau lainnya.</p>
          <!-- <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a> -->
        </div>
      </div>

      <!-- Slide 3 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">BERSAMA KAMI</h2>
          <p class="animate__animated animate__fadeInUp">Siap membantu anda untuk menghadirkan website anda online di internet melalui beberapa pilihan produk desain website kami.</p>
          <!-- <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a> -->
        </div>
      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Services Section ======= -->
    <section class="services">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bx-diamond"></i></div>
              <h4 class="title"><a href="">Unique Styles</a></h4>
              <p class="description">Menawarkan Tampilan yang cantik dan eye catching sehingga membuat user lebih dimanjakan</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bx-like"></i></div>
              <h4 class="title"><a href="">Beautiful websites</a></h4>
              <p class="description">Dengan Teknologi Informasi yang diterapkan di Perusahaan anda.
Membuat Aplikasi membantu pekerjaan anda menjadi lebih
mudah, cepat dan tepat</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bx-crown"></i></div>
              <h4 class="title"><a href="">Unlimited Request</a></h4>
              <p class="description">TI-Pindad memberi Anda kebebasan kepada anda untuk menentukan aplikasi yang Anda inginkan </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bx-devices"></i></div>
              <h4 class="title"><a href="">Mobile Friendly</a></h4>
              <p class="description">Semua Aplikasi yang kami buat ramah seluler / Responsive</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Why Us Section ======= -->
    <section class="why-us section-bg" data-aos="fade-up" date-aos-delay="200">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 video-box">
            <img src="assets/img/why-us.jpg" class="img-fluid" alt="">
            <a href="https://www.youtube.com/watch?v=Vz9nkXzf3Oc" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-6 d-flex flex-column justify-content-center p-5">

            <div class="icon-box">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="#">Design & Development</a></h4>
              <p class="description">Dengan memanfaatkan main engine yang dikembangkan sendiri, kami berupaya untuk membuat sebuah website yang user friendly sehingga mudah dikelola termasuk oleh yang masih awam di bidang pemograman sekalipun, sesuai dengan kebutuhan dan perkembangan zaman dimana teknologi bersifat memudahkan pemakai.</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="#">After Sales Service</a></h4>
              <p class="description">Layanan purnajual (After Sales Service) ialah jasa layanan yang diberikan produsen kepada konsumennya setelah transaksi penjualan dilakukan, sebagai jaminan mutu untuk produk yang ditawarkannya. TI-Pindad yang dalam hal ini berperan sebagai pengembang web juga memberikan layanan purnajual kepada semua klien</p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Features Section ======= -->
    <section class="features">
      <div class="container">

        <div class="section-title">
          <h2>TERPERCAYA DAN HANDAL</h2>
          <p>Produk kami siap mendukung pembangunan Nasional dibidang Teknologi Informasi.</p>
        </div>
<hr>
        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="assets/img/features-1.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-4">
            <h3>Human Resources Information System</h3>
            <p class="font-italic">
              Sebuah aplikasi berbasis web yang mengintegrasikan seluruh data terkait personil perusahaan seperti data pribadi, cuti/lembur, shift kerja, data pengajuan ijin keluar komplek, data pengajuan surat perjalanan dinas, hingga perhitungan gaji personil.
            </p>
            <ul>
              <li><i class="icofont-check"></i> Organization Management.</li>
              <li><i class="icofont-check"></i> Personal Administration.</li>
              <li><i class="icofont-check"></i> Time Management.</li>
              <li><i class="icofont-check"></i> Payroll.</li>
              <li><i class="icofont-check"></i> Insentive.</li>
              <li><i class="icofont-check"></i> Employe Self Service.</li>
            </ul>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/features-2.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Executive Information System</h3>
            <p class="font-italic">
              Executive Information System (EIS) adalah sistem berbasis komputer yang interaktif, yang memungkinkan pihak eksekutif untuk mengakses data dan informasi, sehingga dapat dilakukan pengidentifikasian masalah, pengeksplorasian solusi, dan menjadi dasar dalam proses perencanaan yang sifatnya strategis.
            </p>
            <p>
             EIS mengintegrasikan data yang berasal dari sumber data internal maupun eksternal, kemudian melakukan transformasi data ke dalam bentuk rangkuman laporan yang berguna. Laporan ini biasanya digunakan oleh manajer dan level eksekutif untuk mengakses secara cepat laporan yang berasal dari seluruh perusahaan dan departemen, sehingga dapat diperoleh pengetahuan yang berguna bagi pihak eksekutif. Laporan ini digunakan untuk menemukan alternatif solusi permasalahan manajerial dan membuat perencanaan keputusan untuk perusahaan.
            </p>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="assets/img/features-3.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5">
            <h3>e-office</h3>
            <p>e-office adalah sebuah website internal yang digunakan untuk pencatatan surat
menyurat, mempermudah dalam distribusi surat juga pengarsipan surat di lingkungan Perusahaan

.</p>
            <ul>
              <li><i class="icofont-check"></i> Surat Internal.</li>
              <li><i class="icofont-check"></i> Surat Eksternal.</li>
              <li><i class="icofont-check"></i> Disposisi.</li>
              <li><i class="icofont-check"></i> Pembuatan Surat.</li>
              <li><i class="icofont-check"></i> Digital Signiture.</li>
              <li><i class="icofont-check"></i> Arsip Surat.</li>
            </ul>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/features-4.svg"
             class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Reminders of Document Expiration</h3>
            <p class="font-italic">
              Aplikasi yang dapat memberikan notifikasi atau peringatan via email apabila Batas Jatuh Tempo Dokumen akan segera habis.
            </p>
            
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->

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
