  



<?php 
$rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'slider'))->result_array(); 
?>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">

      <!-- Slide  -->
      <?php foreach ($rows_ti as $key) { ?>
      <div class="carousel-item <?=$key['tag']?>">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">
            <?=$key['judul'];?>
           </h2>
          <p class="animate__animated animate__fadeInUp"><?=$key['sub_judul']?></p>
          <!-- <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a> -->
        </div>
      </div>
      <?php } ?>
      

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
<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'home_row1'))->result_array(); ?>
    <!-- ======= Services Section ======= -->
    <section class="services">
      <div class="container">

        <div class="row">


          <?php foreach ($rows_ti as $key) { ?>
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="<?=$key['gambar']?>">
              <div class="icon"><i class="<?=$key['keterangan_gambar']?>"></i></div>
              <h4 class="title"><a href=""><?=$key['judul']?></a></h4>
              <p class="description"><?=$key['sub_judul']?></p>
            </div>
          </div>
          <?php } ?>
         

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Why Us Section ======= -->
 
<style type="text/css">
  .why-us .play-btn {
    top: calc(50% - 125px);
}


</style>   
    <section class="why-us section-bg" data-aos="fade-up" date-aos-delay="200">
      <div class="container">
        <?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'home_row21'))->result_array(); ?>
        <div class="row">
          <?php foreach ($rows_ti as $key) { ?>
          <div class="col-lg-6 video-box">
            <img src="<?=base_url().$key['gambar']?>" class="img-fluid" alt="">
            <a href="https://www.youtube.com/watch?v=Vz9nkXzf3Oc" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>
          <?php } ?>
          <?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'home_row2'))->result_array(); ?>
          <div class="col-lg-6 d-flex flex-column justify-content-center p-5">
            <?php foreach ($rows_ti as $key) { ?>
            <div class="icon-box">
              <div class="icon"><i class="<?=$key['gambar']?>"></i></div>
              <h4 class="title"><a href="#"><?=$key['judul']?></a></h4>
              <p class="description"><?=$key['sub_judul']?></p>
            </div>
            <?php } ?>
            

          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Features Section ======= -->
    <section class="features">
      <div class="container">
        <?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'home_row31'))->row_array(); ?>
        <div class="section-title">
          <h2><?=$rows_ti['judul'] ?></h2>
          <p><?=$rows_ti['sub_judul'] ?></p>
        </div>
<hr>
 <?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'home_row3'))->result_array(); ?>
 <?php foreach ($rows_ti as $key) { 
  if($key['id_berita'] % 2 == 0){

  ?>
        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="<?=base_url().$key['gambar']?>" class="img-fluid" alt="">
          </div>

          <div class="col-md-7 pt-4">
            <h3><?=$key['judul']?></h3>
            <?=$key['sub_judul']?>
            
          </div>
        </div>
<?php }else{ ?>
        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="<?=base_url().$key['gambar']?>" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3><?=$key['judul']?></h3>
            <?=$key['sub_judul']?>
          </div>
        </div>
<?php }} ?>
       

      
      </div>
    </section><!-- End Features Section -->

  </main><!-- End #main -->


