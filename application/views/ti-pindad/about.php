

 

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Tentang Kami</h2>
          <ol>
            <li><a href="<?=base_url()?>index.php">Home</a></li>
            <li>Tentang Kami</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= About Section ======= -->
    
    <section class="about" data-aos="fade-up">
      <div class="container">
        <?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'about_row1'))->row_array(); ?>
        <div class="row">
          <div class="col-lg-6">
            <img src="<?=base_url()?>assets/img/about-image-670x378.png" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <h3><?=$rows_ti['judul']?></h3>
            <?=$rows_ti['sub_judul']?>
            
            <ul>
              <?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'about_row2'))->result_array(); ?>
              <?php foreach ($rows_ti as $key) { ?>
                <li><i class="icofont-check-circled"></i> <?=$key['judul']?></li>

              <?php } ?>  
            </ul>
            
          </div>
        </div>

      </div>
    </section><!-- End About Section -->
<hr>
    <!-- ======= Facts Section ======= -->
    <!--< section class="facts section-bg" data-aos="fade-up">
      <div class="container">

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">232</span>
            <p>Clients</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">521</span>
            <p>Projects</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">1,463</span>
            <p>Hours Of Support</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">15</span>
            <p>Hard Workers</p>
          </div>

        </div>

      </div>
    </section >--><!-- End Facts Section -->

    <!-- ======= Our Skills Section ======= -->
    <section class="skills" data-aos="fade-up">
      <div class="container">

        <!-- <div class="section-title">
          <h2>Skill Kami</h2>
         <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">HTML <i class="val">100%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">CSS <i class="val">100%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">JavaScript <i class="val">100%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">PHP <i class="val">100%</i></span>
            </div>
          </div>
        </div> -->

        <div class="skills-content"></div>
<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'about_row3'))->row_array(); ?>
<section class="testimonials" data-aos="fade-up">
      <div class="container">
<div class="owl-carousel testimonials-carousel">
<div class="testimonial-item">
  <h2><?=$rows_ti["judul"]?></h2>
<img src="<?=base_url().$rows_ti["gambar"]?>" class="testimonial-img" alt="">
</div></div></div></section>
<?=$rows_ti["sub_judul"]?>

          

        </div>

      </div>
      <hr>
    </section><!-- End Our Skills Section -->

    <!-- ======= Tetstimonials Section ======= -->
<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'about_row41'))->row_array(); ?>    
    <section class="testimonials" data-aos="fade-up">
      <div class="container">

        <div class="section-title">
          <h2><?=$rows_ti['judul']?></h2>
          
        </div>

        <div class="owl-carousel testimonials-carousel">
<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'about_row4'))->result_array(); ?> 
<?php foreach ($rows_ti as $key) { ?>
          <div class="testimonial-item">
            <img src="<?=base_url().$key["gambar"]?>" class="testimonial-img" alt="">
            <?=$key["judul"]?>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              <?=$key["sub_judul"]?>
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>
<?php } ?>
          

          

        </div>

      </div>
    </section><!-- End Ttstimonials Section -->

  </main><!-- End #main -->

 
