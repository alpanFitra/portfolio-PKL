

  <main id="main">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Kontak</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Kontak</li>
          </ol>
        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">
              <div class="col-md-12">
                <div class="info-box">
                  <i class="bx bx-map"></i>
                  <h3>Alamat Kami</h3>
                  <p>Jl. Gatot Subroto No 517 Bandung - Jawa barat</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-envelope"></i>
                  <h3>Email Kami</h3>
                  <p>itmarketing@pindad.com</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-phone-call"></i>
                  <h3>Telp. Kami</h3>
                  <p>+62 22 7312073</p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
            <form method="POST" action="<?=base_url()?>../phpmailer/kirim.php" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name*" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email*" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="company" id="company" placeholder="Company Name*" required>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="job" id="job" placeholder="Job Title*" required>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone">
              </div>
              <div class="form-group mt-3">
              <select name='subject' class='form-control' style='width: 100%;'>
                <option value="Aplikasi HRIS">Aplikasi HRIS</option>
                <option value="Aplikasi e-Office">Aplikasi e-Office</option>
                <option value="Aplikasi Red-x">Aplikasi Red-X</option>
                <option value="Aplikasi EIS" selected>Aplikasi EIS</option>
              </select>
               <!-- <input type="text" class="form-control" name="subject" id="subject" placeholder="Produk"> -->
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3" id="pesan">
                <div class="loading">Loading</div>
                <div  class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->



    

</div>
          

        </div>

      </div>
    </section><!-- End Contact Section -->





    <!-- ======= Map Section ======= -->
    <section class="map mt-2">
      <div class="container-fluid p-0">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.640289775226!2d107.64474991431732!3d-6.933524969795464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e66843f68ddf%3A0xdba0f13c1c9f2cd0!2sPT%20Pindad!5e0!3m2!1sid!2sid!4v1580876439544!5m2!1sid!2sid" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
      </div>
    </section><!-- End Map Section -->

  </main><!-- End #main -->
