

  <main id="main">

    <!-- ======= Our Portfolio Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Produk</h2>
          <ol>
            <li><a href="<?=base_url()?>index.php">Home</a></li>
            <li>Produk</li>
          </ol>
        </div>

      </div>
    </section><!-- End Our Portfolio Section -->

    <!-- ======= Portfolio Section ======= -->
    <section class="portfolio">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">App</li>
              <li data-filter=".filter-device">Device</li>
              <li data-filter=".filter-office">Work Shop</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

          <!-- <div class="col-lg-4 col-md-6 filter-app">
            <div class="portfolio-item">
              <img src="assets/img/portfolio/hris-logo-449x257.png" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h3><a href="assets/img/portfolio/hris-logo-449x257.png" data-gall="portfolioGallery" class="venobox" title="HRIS">Human Resources Integrated System</a></h3>
                <div>
                  <a href="assets/img/portfolio/hris-logo-449x257.png" data-gall="portfolioGallery" class="venobox" title="HRIS"><i class="bx bx-plus"></i></a>
                  <a href="detail_prod_hris.php" title="Portfolio Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div> -->
<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'produk_row1'))->result_array(); ?>
<?php foreach ($rows_ti as $key) { ?>
          <div class="col-lg-4 col-md-6 <?=$key['grup']?>">
            <div class="portfolio-item">
              <img src="<?=base_url().$key['gambar']?>" class="img-fluid" alt="" style="width: 349px;height: 199px;">
              <div class="portfolio-info">
                <h3><a href="<?=base_url().$key['gambar']?>" data-gall="portfolioGallery" class="venobox" title="<?=$key['tittle']?>"><?=$key['judul']?></a></h3>
                <div>
                  <a href="<?=base_url().$key['gambar2']?>" data-gall="portfolioGallery" class="venobox" title="<?=$key['tittle']?>"><i class="bx bx-plus"></i></a>
                  <a href="<?=$key['url']?>" title="<?=$key['tittle']?>"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
<?php } ?>
          

         
         

        </div>

      </div>
    </section><!-- End Portfolio Section -->

  </main><!-- End #main -->
