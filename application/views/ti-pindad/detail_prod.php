<?php 
session_start();
$aktif = $this->uri->segment(3);

?>

  <main id="main">


    <!-- ======= Our Team Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Detail Produk</h2>
          <ol>
            <li><a href="<?=base_url()?>index.php">Home</a></li>
            <li><a href="<?=base_url()?>produk.php">Produk</a></li>
            <li>Detail Produk</li>
          </ol>
        </div>

      </div>
    </section><!-- End Our Team Section -->

<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'detail_produk_hris_row1','grup' => $aktif))->result_array(); ?>
<?php foreach ($rows_ti as $key) { ?>
<section class="testimonials" data-aos="fade-up">
      <div class="container">
<div class="owl-carousel testimonials-carousel">
<div class="testimonial-item">
  <h2><?=$key['judul']?></h2>
  <hr>
<img src="<?=base_url().$key['gambar']?>" class="testimonial-img2" alt="" style="width: 100%;">
<hr>
<?=$key['sub_judul']?>

</div></div></div></section>
<?php } ?>

<section class="features">
      <div class="container">
<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'detail_produk_hris_row2','grup' => $aktif))->result_array(); ?>        
<?php foreach ($rows_ti as $key) { ?>
        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="<?=base_url().$key['gambar']?>" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-4">
            <h3><?=$key['judul']?></h3>
            <?=$key['sub_judul']?>
            
          </div>
        </div>
<?php } ?>

<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'detail_produk_hris_row3','grup' => $aktif))->row_array(); ?>


        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="<?=base_url().$rows_ti['gambar']?>" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3><?=$rows_ti['judul']?></h3>
            <?=$rows_ti['sub_judul']?>
            
          </div>
        </div>

        

        

      </div>
    </section><!-- End Features Section -->



<section class="services">
      <div class="container">

        <div class="row">

<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'detail_produk_hris_row4','grup' => $aktif))->result_array(); ?>        
<?php foreach ($rows_ti as $key) { ?>


          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-<?=$key['keterangan_gambar']?>">
              <div class="icon"><?=$key['gambar']?></div>
              <h4 class="title"><a href=""><?=$key['judul']?></a></h4>
              <p class="description"><?=$key['sub_judul']?></p>
            </div>
          </div>
<?php } ?>
          

       
        </div>

      </div>
    </section><!-- End Services Section -->
<?php 

if(!isset($_SESSION['token'])){
  $_SESSION['token']="";
}
  
if($_SESSION['token']=="idtoken123456"){
  // $_SESSION['klik'] = "detail_prod_hris.php";
  // header('Location: https://ti.pindad.com/login.php');
?>
 <!-- ======= Portfolio Section ======= -->
    <section class="portfolio" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-om" title="Organization Management">Modul OM</li>
              <li data-filter=".filter-pa" title="Personal Administration">Modul PA</li>
              <li data-filter=".filter-py" title="Payroll">Modul PY</li>
              <li data-filter=".filter-ess" title="Employe Self Service">Modul ESS</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-master-company-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-master-company-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Master Company"><h3 style="color: white;">Fitur Master Company</h3> <p  style="color: white;">Fitur ini mengatur profile perusahaan seperti nama perusahaan, deskripsi secara lengkap, NPWP perusahaan, logo, lokasi perusahaan.</p></a>
                <div>
                  
                  
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-location-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-location-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Location"><h3 style="color: white;">Fitur  Location</h3> <p  style="color: white;">Fitur ini mengelola fitur location memudahkan untuk mengelompokan perusahaan berdasarkan lokasi perusahaan itu beroperasi.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-tipe-unit-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-tipe-unit-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Tipe Unit"><h3 style="color: white;">Fitur  Tipe Unit</h3> <p  style="color: white;">Fitur ini memudahkan dalam mengelola setiap level unit kerja didalam perusahaan, maka HRIS melakukan pengkategorian setiap unit.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-master-unit-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-master-unit-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Master Unit"><h3 style="color: white;">Fitur  Master Unit</h3> <p  style="color: white;">Fitur ini mengelola unit kerja yang berbeda-beda disesuaikan dengan kebutuhan perusahaan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-grade-jabatan-2-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-grade-jabatan-2-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Grade Jabatan"><h3 style="color: white;">Fitur  Grade Jabatan</h3> <p  style="color: white;">Fitur ini mengelola rentang gaji karyawan dalam perusahaan ditentukan seberapa tinggi tingkat jabatan yang mereka miliki.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-om">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-master-jabatan-2-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-master-jabatan-2-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur  Master Jabatan"><h3 style="color: white;">Fitur  Master Jabatan</h3> <p  style="color: white;">Fitur ini mengelola serta melakukan klasifikasi mengenai job description, job family, job grade maupun unit dari tempat jabatan masing-masing karyawan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>









          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-list-personal2-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-list-personal2-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur List Personal"><h3 style="color: white;">Fitur List Personal</h3> <p  style="color: white;">Fitur ini dapat memonitoring daftar personal berdasarkan status keaktifan dengan mudah, pegawai resign, kontrak dll.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-master-personal-2-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-master-personal-2-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Master Personal"><h3 style="color: white;">Fitur Master Personal</h3> <p  style="color: white;">Fitur ini dapat mengelola personil dengan detail, yaitu informasi dasar karyawan, anggota keluarga karyawan, alamat lengkap, status kepegawaian, data ketenagakerjaan, email dll.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-time-2-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-time-2-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Time"><h3 style="color: white;">Fitur Time</h3> <p  style="color: white;">Fitur ini dapat menampilkan secara jelas dan praktis mengenai segala sesuatu yang berhubungan dengan catatan kehadiran.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-payroll-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-payroll-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Payroll"><h3 style="color: white;">Fitur Payroll</h3> <p  style="color: white;">Fitur ini menampilkan serta mengelola seluruh informasi yang berkaitan dengan penggajian karyawan seperti gaji pokok, akun bank, PPh 21 serta daftar komponen karyawan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-riwayat-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-riwayat-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Riwayat"><h3 style="color: white;">Fitur Riwayat</h3> <p  style="color: white;">Fitur ini menampilkan riwayat jabatan, golongan, pendidikan, pelatihan, pengalaman organisasi, penghargaan. pelanggaran, kinerja, cuti dan pengalaman kerja karyawan miliki.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-kelola-jadwal-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-kelola-jadwal-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Kelola Jadwal"><h3 style="color: white;">Fitur Kelola Jadwal</h3> <p  style="color: white;">Fitur ini dugunakan untuk mengelompokkan karyawan yang memiliki jam kerja yang sama. Jadwal ini nantinya akan dibandingkan dengan data absensi karyawan untuk memperoleh status kehadiran.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-pengajuan-lembur-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-pengajuan-lembur-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Pengajuan Lembur"><h3 style="color: white;">Fitur Pengajuan Lembur</h3> <p  style="color: white;">Fitur ini memudahkan karyawan dalam hal pengajuan lembur. Admin dalam hal ini Manajemen HR atau pihak lainnya yang diberikan tanggungjawab dapat mengatur sendiri jalur approval request ini.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>


          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-time-definition-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-time-definition-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Time Definition"><h3 style="color: white;">Fitur Time Definition</h3> <p  style="color: white;">Fitur ini mengatur komponen time yang akan digunakan pada perhitungan payroll. Di dalam perhitungan payroll karyawan, terdapat berbagai komponen didalamnya.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

            <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-timesheet-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-timesheet-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Timesheet"><h3 style="color: white;">Fitur Timesheet</h3> <p  style="color: white;">Fitur ini membantu HR dalam mengelola jadwal kerja karyawan berdasarkan kalender kerja pertahun.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-kelola-keluar-komplek-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-kelola-keluar-komplek-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Kelola Keluar Komplek"><h3 style="color: white;">Fitur Kelola Keluar Komplek</h3> <p  style="color: white;">Fitur ini mengajukan izin keluar komplek karyawan dengan status ijin bisa ditentukan apakah keperluan dinas atau keperluan pribadi.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-pa">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-kelola-cuti-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-kelola-cuti-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Kelola Cuti"><h3 style="color: white;">Fitur Kelola Cuti</h3> <p  style="color: white;">Fitur ini mengatur konfigurasi cuti perusahaan. Pada fitur ini, kita juga dapat menentukan kouta cuti, dan siapa saja karyawan yang berhak menerima cuti.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>







          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-bank-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-bank-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Bank"><h3 style="color: white;">Fitur Bank</h3> <p  style="color: white;">Fitur ini berfungsi untuk menyimpan informasi baru data-data Bank yang berkaitan dengan proses payroll perusahaaan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-employee-set-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-employee-set-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Employee Set"><h3 style="color: white;">Fitur Employee Set</h3> <p  style="color: white;">Fitur ini dapat memudahkan manajemen HR dan Payroll dalam melakukan pengelompokkan beberapa karyawan tertentu dalam hal penerimaan komponen gaji yang sudah ditetapkan oleh perusahaan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-payment-method-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-payment-method-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Payment Method"><h3 style="color: white;">Fitur Payment Method</h3> <p  style="color: white;">Fitur ini dapat menyimpan seluruh metode pembayaran yang digunakan dalam transaksi finansial perusahaan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-payroll-group-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-payroll-group-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Payroll Group"><h3 style="color: white;">Fitur Payroll Group</h3> <p  style="color: white;">Fitur ini dapat melakukan pengelompokkan payroll yang kemudian dapat kita atur proses pembayaran, melalui dari periode pembayaran, mulai dari periode pembayran, tanggal pembayaran, metode pembayaran, tax dan currancy.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-payroll-process-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-payroll-process-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Payroll Process"><h3 style="color: white;">Fitur Payroll Process</h3> <p  style="color: white;">Fitur ini akan melakukan proses perhitungan payroll yang akan diterima oleh karyawan pada setiap periode perhitungan oleh admin setelah melakukan pemilahan terhadap data-data yang akan menjadi sumber kalkulasi payroll di dalam fitur Payroll Data Source.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-payroll-report-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-payroll-report-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Payroll Report"><h3 style="color: white;">Fitur Payroll Report</h3> <p  style="color: white;">Fitur digunakan untuk mengeluarkan file report payroll berupa file excel. Menu filter dapt digunakan untuk mengeluarkan report dapat dipilih user disesuaikan dengan kebutuhan user.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-salary-slip-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-salary-slip-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Salary Slip"><h3 style="color: white;">Fitur Salary Slip</h3> <p  style="color: white;">Fitur khusus untuk menghasilkan file pdf slip yang sipa untuk di print.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-py">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-tax-calculator-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-tax-calculator-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Tax Calculator"><h3 style="color: white;">Fitur Tax Calculator</h3> <p  style="color: white;">Fitur ini digunakan untuk melihat simulasi pembayaran pajak selama satu tahun.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>








          <div class="col-lg-4 col-md-6 filter-ess">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-profil-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-profil-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Profil"><h3 style="color: white;">Fitur Profil</h3> <p  style="color: white;">Fitur ini berfungsi untuk menampilkan secara lengkap Personal Details dan Employe Profile pada masing-masing karyawan.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-ess">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-time-management-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-time-management-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Time Management"><h3 style="color: white;">Fitur Time Management</h3> <p  style="color: white;">Fitur ini berfungsi membantu karyawan melihat timesheet (catatan kehadiran karyawan), company calender, overtime request, permission request dan leave request. Pada menu ini juga karyawan dapat mengisi worksheet, leave dan overtime request.</p></a>
                <div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 filter-ess">
            <div class="portfolio-item">
              <img src="<?=base_url()?>assets/img/portfolio/fitur-announcement-676x415.png" class="img-fluid" alt="">
              <div class="portfolio-info" style="top: 15% !important;">
                <a href="<?=base_url()?>assets/img/portfolio/fitur-announcement-676x415.png" data-gall="portfolioGallery" class="venobox" title="Fitur Announcement"><h3 style="color: white;">Fitur Announcement</h3> <p  style="color: white;">Fitur ini dapat memudahkan manajemen perusahaan dalam menyampaikan informasi/pengumanan penting kepada seluruh karyawan. Selain itu karyawan dapat mengunduh dokumen yang dilampirkan.</p></a>
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

