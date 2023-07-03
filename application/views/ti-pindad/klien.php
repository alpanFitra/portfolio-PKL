
  <main id="main">

    <!-- ======= Our Portfolio Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Klien</h2>
          <ol>
            <li><a href="<?=base_url()?>index.php">Home</a></li>
            <li>Klien</li>
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
              <li data-filter=".filter-eks">Eksternal</li>
              <li data-filter=".filter-int">Internal</li>
              
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

<?php $rows_ti = $this->model_utama->view_where('ti_konten',array('judul_seo' => 'klien_row1'))->result_array(); ?>
<?php foreach ($rows_ti as $key) { ?>
          <div class="col-lg-4 col-md-6 <?=$key['grup']?>">
            <div class="portfolio-item">
              <center><img src="<?=base_url().$key['gambar']?>" class="img-fluid" alt="" style="<?=$key['style']?>"></center>
              <div class="portfolio-info">
                <h3><a href="<?=base_url().$key['gambar']?>" data-gall="portfolioGallery" class="venobox" title="<?=$key['tittle']?>"><?=$key['judul']?></a></h3>
               
              </div>
            </div>
          </div>
<?php } ?>
         

          

        </div>

      </div>
    </section><!-- End Portfolio Section -->

  </main><!-- End #main -->

