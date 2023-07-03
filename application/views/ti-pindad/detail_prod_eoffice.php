<?php 

session_start();
// if($_SESSION['token']!="idtoken123456"){
//   $_SESSION['klik'] = "detail_prod_eoffice.php";
//   header('Location: https://ti.pindad.com/login.php');
// }

include("variabel.php"); $aktif4 = "class='active drop-down'"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?=$detail_prod_eoffice?></title>
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
  <h2>Aplikasi Surat Menyurat (e-office)</h2>
  <hr>
<img src="assets/img/portfolio/WhatsApp Image 2020-12-01 at 21.02.38.jpeg"  alt="">
<hr>
<p>Aplikasi e-office adalah sebuah website yang digunakan untuk pencatatan surat
menyurat, mempermudah dalam distribusi surat juga pengarsipan surat di lingkungan Perusahaan.
</p>
</div></div></div></section>



<section class="features">
      <div class="container">

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="assets/img/portfolio/produkti.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-4">
            <h3>Produktifitas</h3>
            <p>
              Organisir perusahaan Anda dengan lebih baik, tingkatkan produktivitas karyawan dan pertumbuhan perusahaan dengan kemudahan, kecepatan penyampaian informasi surat menyurat.
            </p>
            
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/portfolio/happy-easy-work.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Kemudahan</h3>
            <p>
              Ucapkan selamat tinggal pada kekacauan kertas yang konvensional, dan ucapkan selamat datang pada manajemen efisien, hanya dengan menggunakan satu rangkai alat-alat yang terintegrasi dengan satu sama lain untuk membantu meningkatkan produktivitas dan kepraktisan. Serahkan kebutuhan administratif Anda pada proses-proses otomatis dan biarkan karyawan Anda fokus pada tugas-tugas yang lebih penting yang akan membantu perusahaan Anda tumbuh secara eksponensial. 
            </p>
            
          </div>
        </div>

        

        

      </div>
    </section><!-- End Features Section -->



<section class="services">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bx-send"></i></div>
              <h4 class="title"><a href="">Surat Internal</a></h4>
              <p class="description">Dapatkan pengelolaan dan distribusi surat dinas secara elektronik antar stakeholder di internal perusahaan secara cepat dan efisien dengan notifikasi langsung pada aplikasi ataupun email.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bx-send"></i></div>
              <h4 class="title"><a href="">Surat Eksternal</a></h4>
              <p class="description">Dapatkan pengelolaan dan distribusi surat dinas secara elektronik antar stakeholder di eksternal perusahaan secara cepat dan efisien dengan notifikasi langsung pada email.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bx-notepad"></i></div>
              <h4 class="title"><a href="">Disposisi</a></h4>
              <p class="description">Melakukan disposisi surat berjenjang mulai dari top manajemen sampai kepada low manajemen.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bx-edit"></i></div>
              <h4 class="title"><a href="">Pembuatan Surat</a></h4>
              <p class="description">Aplikasi ini mempunyai fitur pembuatan surat secara online dengan disediakan form surat dengan dukungan editor microsoft office.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bx-pen"></i></div>
              <h4 class="title"><a href="">Digital Signiture</a></h4>
              <p class="description">Aplikasi ini didukung dengan ketersediaan digital signature sehingga tidak perlu lagi melakukan approve secara manual.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bx-hdd"></i></div>
              <h4 class="title"><a href="">Arsip Surat</a></h4>
              <p class="description">Aplikasi ini mendukung repository pengarsipan surat-surat yang telah dibuat, dikirim dan diterima yang sewaktu-waktu dapat dipanggil / didownload apabila diperlukan.</p>
            </div>
          </div>          
        </div>

      </div>
    </section><!-- End Services Section -->
<?php 
if($_SESSION['token']=="idtoken123456"){
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
              <img src="assets/img/portfolio/home2-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/home2-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Home / Beranda"><h3 style="color: white;">Fitur Home / Beranda</h3> <p  style="color: white;">Terdapat berbagai informasi yang ditampilkan seperti profile user, jumlah surat dan disposisi yang masuk, serta akses cepat ke daftar surat masuk.</p></a>
                <div>
                  
                  
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/suratmasuk1-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/suratmasuk1-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Respons Surat Masuk"><h3 style="color: white;">Fitur Respons Surat Masuk</h3> <p  style="color: white;">Memberikan respons surat masuk internal dilakukan dengan cara akses daftar surat masuk dan berikan tanggapan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/2020-03-11-112741-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/2020-03-11-112741-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Tipe Unit"><h3 style="color: white;">Fitur  Tipe Unit</h3> <p  style="color: white;">Fitur ini memudahkan dalam mengelola struktur tipe organisasi perusahaan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/tipe-jabatan-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/tipe-jabatan-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Tipe Jabatan"><h3 style="color: white;">Fitur  Tipe Jabatan</h3> <p  style="color: white;">Fitur ini berfungsi untuk mengatur tipe jabatan pada aplikasi.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/pegawai-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/pegawai-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Pegawai"><h3 style="color: white;">Fitur  Grade Jabatan</h3> <p  style="color: white;">Fitur ini berfungsi untuk mengatur pagawai yang menggunakan aplikasi ini.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/jenissurat-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/jenissurat-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Jenis Surat"><h3 style="color: white;">Fitur  Jenis Surat</h3> <p  style="color: white;">Fitur ini berfungsi untuk mengatur jenis surat.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>









          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/jenisdisposisi-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/jenisdisposisi-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Jenis Disposisi"><h3 style="color: white;">Fitur Jenis Disposisi</h3> <p  style="color: white;">Fitur ini berfungsi untuk mengatur disposisi surat.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/sifatsurat-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/sifatsurat-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Sifat Surat"><h3 style="color: white;">Fitur Sifat Surat</h3> <p  style="color: white;">Fitur ini berfungsi untuk mengatur sifat surat.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/laporan-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/laporan-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Laporan"><h3 style="color: white;">Fitur LaporanFitur ini berfungai untuk melihat rangkuman penyajian data dan informasi dari aplikasi secara real time.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/demografi-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/demografi-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Demografi"><h3 style="color: white;">Fitur Demografi</h3> <p  style="color: white;">Fitur ini berfungsi untuk melihat rangkuman penyajian data dan informasi dari surat masuk, surat keluar, user dan disposisi.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/grafik-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="assets/img/portfolio/grafik-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Grafik & Statistik"><h3 style="color: white;">Fitur Grafik & Statistik</h3> <p  style="color: white;">Fitur ini menampilkan Grafik atau statistik dari surat keluar masuk, aktifitas user, pengunjung dan status surat masuk.</p></a>
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