  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center fixed-top topbar-transparent">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-center justify-content-lg-start">
      <i class="bi bi-envelope d-flex align-items-center"><span>itmarketing@pindad.com</span></i>
      <i class="bi bi-clock ms-4 d-none d-lg-flex align-items-center"><span>Senin-Jum'at: 08:30 AM - 04:30 PM</span></i>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <div class="logo me-auto">
        
        <!-- Uncomment below if you prefer to use an image logo -->
         <a href="<?php echo base_url(); ?>template/<?php echo template(); ?>/template.php" style="color: white;"><img src="https://ti.pindad.com/assets/img/logo-pindad.png" alt="" class="img-fluid"> PT Pindad</a>
         <!-- <h1><a href="index.html">PT Pindad</a></h1> -->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#produk">Produk</a></li>
          <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#events">Events</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="#contact" class="book-a-table-btn scrollto">Kontak Kami</a>
      <a href="<?php echo base_url('administrator'); ?>" class="book-a-table-btn scrollto">Login</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image: url(<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/img/slide/slide-1.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown" style="font-family: 'segoe ui';"><span>TEKNOLOGI INFORMASI</span> PINDAD</h2>
                <p class="animate__animated animate__fadeInUp">TI-Pindad menawarkan jasa pembuatan website berkualitas dengan fitur professional. Kami melayani pembuatan website untuk keperluan khusus bagi perusahan, organisasi, lembaga pemerintah, personal, komunitas, organisasi atau lainnya.</p>
                <div>
                  <a href="#produk" class="btn-menu animate__animated animate__fadeInUp scrollto">Produk Kami</a>
                  <a href="#contact" class="btn-book animate__animated animate__fadeInUp scrollto">Kontak Kami</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background-image: url(<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/img/slide/slide-2.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown" style="font-family: 'segoe ui';"><span>TEKNOLOGI INFORMASI</span> PINDAD</h2>
                <p class="animate__animated animate__fadeInUp">Siap membantu anda untuk menghadirkan website anda online di internet melalui beberapa pilihan produk desain website kami.</p>
                <div>
                  <a href="#produk" class="btn-menu animate__animated animate__fadeInUp scrollto">Produk Kami</a>
                  <a href="#contact" class="btn-book animate__animated animate__fadeInUp scrollto">Kontak Kami</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item" style="background-image: url(<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/img/slide/slide-3.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown" style="font-family: 'segoe ui';"><span>TEKNOLOGI INFORMASI</span> PINDAD</h2>
                <p class="animate__animated animate__fadeInUp">Grab Your Own Project</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Produk Kami</a>
                  <a href="#contact" class="btn-book animate__animated animate__fadeInUp scrollto">Kontak Kami</a>
                </div>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Clients Section ======= -->
      <section id="testimonials" class="clients section-bg">
        <div class="container col-lg-20">
          <div class="section-title" data-aos="fade-up">
            <h2 style="padding-top: 4px;"> <b>Clients</b></h2>
          </div>

          <div
            class="testimonials-slider swiper col-lg-12"
            data-aos="fade-up"
            data-aos-delay="100"
            
          >

          
        <div class="clients-slider swiper" style="height: 194px;">
          <div class="swiper-wrapper align-items-center">
          <?php 
          $produk = $this->model_produk->tampil_client()->result_array();
            foreach($produk as $prd){
          
          ?>
            <div class="swiper-slide"><img src="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/img/clients/<?php echo $prd['gambar']; ?>" class="img-fluid" alt=""></div>
            <?php } ?>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
      
      </div>
        
      </section>
      <!-- End Clients Section -->



      <!-- ======= About Us Section ======= -->
      <section id="about" class="about">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>About Us</h2>
          </div>

          <div class="row content">
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
              <p><b>PT Pindad</b>
                Sebagai BUMN di bidang industry pertahanan & Keamanan, juga memiliki kompetensi sebagai penyedia produk/jasa teknologi informasi yang dapat menyiapkan kebutuhan terkait integrasi sistem informasi maupun aplikasi berbasis teknologi informasi.
              </p>
              <p>
                Kami memberikan layanan profesioanal untuk pengelolaan sumber daya IT (informasi dan teknologi) yang dimiliki pelanggan seperti pengelolaan sumber daya manusia (pelatihan), sistem dan infrastruktur jaringan terintegrasi, keamanan sistem serta integrasi seluruh aktifitas sumber daya informasi dan teknologi meliputi perencanaan, implementasi dan pengawasan serta pengamanan.
              </p>
            </div>
            <div
              class="col-lg-6 pt-4 pt-lg-0"
              data-aos="fade-up"
              data-aos-delay="300"
            >
              <p>
                Visi dan Misi kami  : 
              </p>
              <ul>
              <li><i class="bx bx-check-double"></i> <b>Visi</b> adalah menjadi produsen peralatan pertahanan dan keamanan terkemuka di Asia pada tahun 2023, melalui upaya inovasi produK dan kemitraan strategis </li>
              <li><i class="bx bx-check-double"></i> <b>Misi</b> Adalah melaksanakan usaha terpadu di bidang peralatan pertahanan serta peralatan peralatan industrial untuk mendukung pembangunan nasional, dan secara khusus untuk mendukung pertahanan dan keamanannegara </li>
              
            </ul>
              <!-- <a href="#" class="btn-learn-more">Learn More</a> -->
            </div>

            
          </div>
          
        </div>
      </section>
      <!-- End About Us Section -->





      <!-- ======= Counts Section ======= -->
      <section id="services" class="services section-bg">
        <div class="container" data-aos="fade-up">

  
          <div class="row g-5">
          <?php 
            $no = 1;
            $produk = $this->model_app->view('deskripsi')->result_array();
            foreach($produk as $prd){  ?>
            <div class="col-md-6 col-lg-4 wow bounceInUp" data-aos="zoom-in" data-aos-delay="100">
              <div class="box">
                <div class="icon" style="background: <?= $prd['bg_desk']; ?>;"><i class="bi bi-<?= $prd['icon']; ?>" style="color: <?= $prd['warna']; ?>;"></i></div>
                <h4 class="title"><a href=""><?= $prd['detail_nama']; ?></a></h4>
                <p class="description"><?= $prd['deskripsi']; ?></p>
              </div>
            </div>
            <?php } ?>
        </div>
  
        </div>
      </section>
      <!-- End Counts Section -->
<!-- ======= Specials Section ======= -->
<section id="specials" class="specials">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>FITUR SISTEM APLIKASI</h2>
          <p>Dengan pengalaman teknologi mutakhir akan memastikan kemudahan anda dalam menggunakan produk kami dan support digital marketing yang kami sediakan dapat meningkatkan traffic website anda. Tim Programmer kami yang selalu berdedikasi untuk mewujudkan dan mengembangkan website dan aplikasi impian anda.</p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
            <?php 
            $no = 1;
            $produk = $this->model_app->view('fitur')->result_array();
            foreach($produk as $prd){  ?>
              <li class="nav-item">
                <a class="nav-link <?php if($no==1){echo "active show";} ?>" data-bs-toggle="tab" href="#tab-<?=$no?>"><?php echo $prd['detail_nama']; ?></a>
              </li>
              <?php $no++;} ?>  
              
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
            <?php 
              
              $no = 1;
              foreach($produk as $prd){ 
            ?>
              <div class="tab-pane <?php if($no==1){echo "active show";} ?>" id="tab-<?=$no?>">
                <div class="row">
                  <div class="col-lg-12 details order-2 order-lg-1">
                    <h3><?= $prd['detail_nama']; ?></h3>
                    <p class="fst-italic"><?= $prd['detail_fitur']; ?></p>
                   
                  </div>
                  <div class="col-lg-12 text-center order-1 order-lg-2">
                    <img src="http://localhost/ti.pindad.com/template/ti-pindad2/assets/img/fitur/<?=$prd['gambar']?>" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <?php $no++; } ?>
              
            
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Specials Section -->
 
      <!-- ======= Services Section ======= -->
      <section id="produk" class="services">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>Produk</h2>
          </div>

          <div class="row">
          <?php 
            $no = 1;
            $produk = $this->model_app->view('aplikasi')->result_array();
            foreach($produk as $prd){  ?>
            <div
              class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0"
            >
              <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                <div class="icon"><i class="bx bx-<?= $prd['icon']; ?>"></i></div>
                <h4 class="title"><a href="<?= $prd['link']; ?>"><?= $prd['nama']; ?></a></h4>
                <p class="description">
                <?= $prd['deskripsi']; ?>
              </div>
            </div>
            <?php } ?>
          </div>
        </div>
      </section>
      <!-- End Services Section -->

    

      <!-- ======= Features Section ======= -->
     <!--  <section id="features" class="features">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>Fitur</h2>
            <p>Adapun Beberapa Fitur Yang Kami Sediakan</p>
          </div>

          <div class="row" data-aos="fade-up" data-aos-delay="300">
            <div class="col-lg-3 col-md-4">
              <div class="icon-box">
                <i class="ri-store-line" style="color: #ffbb2c"></i>
                <h3><a href="">Menjual Produk Yang di Produksi</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
              <div class="icon-box">
                <i class="ri-bar-chart-box-line" style="color: #5578ff"></i>
                <h3><a href="">Statistik yang Baik</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
              <div class="icon-box">
                <i class="ri-calendar-todo-line" style="color: #e80368"></i>
                <h3><a href="">Produk yang dipesan selesai sesuai deadline</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4 mt-lg-0">
              <div class="icon-box">
                <i class="ri-paint-brush-line" style="color: #e361ff"></i>
                <h3><a href="">Web yang berwarna</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-database-2-line" style="color: #47aeff"></i>
                <h3><a href="">Mengurus Database dari web server</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-gradienter-line" style="color: #ffa76e"></i>
                <h3><a href="">Target Pasar yang beragam</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-file-list-3-line" style="color: #11dbcf"></i>
                <h3><a href="">List Portfolio yang memuaskan</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-price-tag-2-line" style="color: #4233ff"></i>
                <h3><a href="">Bangunan yang megah dan kokoh</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-bar-chart-line" style="color: #b2904f"></i>
                <h3><a href="">Prestasi yang terus meningkat</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-disc-line" style="color: #b20969"></i>
                <h3><a href="">Bel Pada jam masuk dan istirahat</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-base-station-line" style="color: #ff5828"></i>
                <h3><a href="">jaringan Kuat dan Stabil</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-fingerprint-line" style="color: #29cc61"></i>
                <h3><a href="">Keamanan Ketat</a></h3>
              </div>
            </div>
          </div>
        </div>
      </section> -->
      <!-- End Features Section -->
      <!-- ======= Portfolio Section ======= -->
      <section id="portfolio" class="portfolio">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>Produk</h2>
            <p>Beberapa Project yang telah Kami selesaikan</p>
          </div>

          <div class="row" data-aos="fade-up" data-aos-delay="200">
            <div class="col-lg-12 d-flex justify-content-center">
              <ul id="portfolio-flters">
                <li data-filter="*" class="filter-active">Semua</li>
                <li data-filter=".aplikasi">App</li>
                <li data-filter=".device">Device</li>
                <li data-filter=".workshop">Work Shop</li>
              </ul>
            </div>
          </div>

          <div
            class="row portfolio-container"
            data-aos="fade-up"
            data-aos-delay="400"
          >
          <?php 
          $produk = $this->model_produk->tampil_produk()->result_array();
            foreach($produk as $prd){
          
          ?>
            <div class="col-lg-4 col-md-6 portfolio-item <?php echo $prd['kategori'] ?>">
              <div class="portfolio-wrap">
                <img
                  src="<?php echo base_url(); ?>template/<?php echo template(); ?>/produk/img/<?php echo $prd['gambar']; ?>"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-info">
                  <h4><?php echo $prd['detail_nama']; ?></h4>
                  <div class="portfolio-links">
                    <a
                      href="<?php echo base_url(); ?>template/<?php echo template(); ?>/produk/img/<?php echo $prd['gambar']; ?>"
                      data-gallery="portfolioGallery"
                      class="portfolio-lightbox"
                      title="<?php echo $prd['detail_nama']; ?>"
                      ></a>
                    <a href="<?php echo base_url('main/detail/').$prd['id']; ?>" title="More Details"
                      ><i class="bx bx-link"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
        </div>
      </section>
      <!-- End Portfolio Section -->  

    <!-- ======= Events Section ======= -->
    <section id="events" class="events">
      <div class="container">

        <div class="section-title">
          <h2>GRAB YOUR OWN PROJECT</h2>
        </div>

        <div class="events-slider swiper">
          <div class="swiper-wrapper">
          <?php 
            $no = 1;
            $produk = $this->model_app->view('event')->result_array();
            foreach($produk as $prd){  ?>
            <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="<?php echo base_url(); ?>template/<?php echo template(); ?>/assets/img/event/<?php echo $prd['gambar']; ?>" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3><?= $prd['tim']; ?></h3>
                  <div class="price">
                    <p><span><?= $prd['nama']; ?></span></p>
                  </div>
                  <p class="fst-italic">
                  <?= $prd['deskripsi']; ?> 
                  </p>
                 <!--  <ul>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                    <li><i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                  </ul> -->
                  <!-- <p>
                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                    velit esse cillum dolore eu fugiat nulla pariatur
                  </p> -->
                </div>
              </div>
            </div><!-- End testimonial item -->

            <?php }?>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Events Section -->

    
<!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span>Contact</span> Us</h2>
        </div>
      </div>

      <div class="map">
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.6402914564724!2d107.64475581431729!3d-6.933524769795456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e66843f68ddf%3A0xdba0f13c1c9f2cd0!2sPT%20Pindad!5e0!3m2!1sid!2sid!4v1657876234685!5m2!1sid!2sid" frameborder="0" allowfullscreen></iframe>

      </div>

      <div class="container mt-5">

        <div class="info-wrap">
          <div class="row">
            <div class="col-lg-3 col-md-6 info">
              <i class="bi bi-geo-alt"></i>
              <h4>Location:</h4>
              <p><b>PT.PINDAD (PERSERO)</b> <br />Jl. Gatot Subroto, No 517
                      <br />Bandung, Indonesia, 40285</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-clock"></i>
              <h4>Open Hours:</h4>
              <p>Monday-Saturday:<br>08:00 AM - 04:00 PM</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>itmarketing@pindad.com</p>
            </div>

           
          </div>
        </div>

        

    

      <!-- ======= Contact Section ======= -->
      <section id="contact" class="contact">
        <div class="container">

          <div class="row" data-aos="fade-up" data-aos-delay="100">
            <div class="col-lg-6">
            
              <div class="row">
              <?php 
            $produk = $this->model_app->view('kontak')->result_array();
            foreach($produk as $prd){  ?>
                <div class="col-md-6">
                  <div class="info-box mt-4">
                    <i class="bi bi-phone"></i>
                    <p>
                      <b><?= $prd['nama']; ?></b><br /><?= $prd['akun']; ?><br /><?= $prd['nomor']; ?><br /><?= $prd['email']; ?>
                    </p>
                  </div>
                </div>
                
                <?php } ?>
              </div>
            </div>
            <div class="col-lg-6">
              <form
                action="forms/contact.php"
                method="post"
                role="form"
                class="php-email-form"
              >
                <div class="form-group">
                  <input
                    type="text"
                    name="name"
                    class="form-control"
                    id="name"
                    placeholder="Your Name"
                    required
                  />
                </div>
                <div class="form-group">
                  <input
                    type="email"
                    class="form-control"
                    name="email"
                    id="email"
                    placeholder="Your Email"
                    required
                  />
                </div>
                <div class="form-group">
                  <input
                    type="text"
                    class="form-control"
                    name="subject"
                    id="subject"
                    placeholder="Subject"
                    required
                  />
                </div>
                <div class="form-group">
                  <textarea
                    class="form-control"
                    name="message"
                    rows="5"
                    placeholder="Message"
                    required
                  ></textarea>
                </div>
                <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">
                    Your message has been sent. Thank you!
                  </div>
                </div>
                <div class="text-center">
                  <button type="submit">Send Message</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
      <!-- End Contact Section -->
















































  </main><!-- End #main -->
  
  