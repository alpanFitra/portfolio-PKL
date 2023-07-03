<?php

// Cek user yang mengakses berdasarkan IP-nya 
include ("connection2021.php");
$ip      = $_SERVER['REMOTE_ADDR']; // Dapatkan IP user
$tanggal = date("Ymd"); // Dapatkan tanggal sekarang
$waktu   = time(); // Dapatkan nilai waktu



$s = mysqli_query($konek, "SELECT * FROM statistik WHERE ip='$ip' AND tanggal='$tanggal'");
// Kalau belum ada, simpan datanya sebagai user baru
if(mysqli_num_rows($s) == 0){
  mysqli_query($konek, "INSERT INTO statistik(ip, tanggal, hits, online) VALUES('$ip', '$tanggal', '1', '$waktu')");
}
// Kalau sudah ada, update data hits user  
else{
  mysqli_query($konek, "UPDATE statistik SET hits=hits+1, online='$waktu' WHERE ip='$ip' AND tanggal='$tanggal'");
}

$query1     = mysqli_query($konek, "SELECT * FROM statistik WHERE tanggal='$tanggal' GROUP BY ip");
$pengunjung = mysqli_num_rows($query1);

$query2        = mysqli_query($konek, "SELECT COUNT(hits) as total FROM statistik");
$hasil2        = mysqli_fetch_array($query2);
$totpengunjung = $hasil2['total'];
 
$query3 = mysqli_query($konek, "SELECT SUM(hits) as jumlah FROM statistik WHERE tanggal='$tanggal' GROUP BY tanggal");
$hasil3 = mysqli_fetch_array($query3);
$hits   = $hasil3['jumlah'];
 
$query4  = mysqli_query($konek, "SELECT SUM(hits) as total FROM statistik");
$hasil4  = mysqli_fetch_array($query4);
$tothits = $hasil4['total'];  

// Cek berapa pengunjung yang sedang online
$bataswaktu       = time() - 300; 
$pengunjungonline = mysqli_num_rows(mysqli_query($konek, "SELECT * FROM statistik WHERE online > '$bataswaktu'"));


// Angka total pengunjung dalam bentuk gambar
$folder = base_url()."counter"; // nama folder
$ext    = ".png";     // ekstension file gambar

// ubah digit angka menjadi enam digit
$totpengunjunggbr = sprintf("%06d", $totpengunjung);
// ganti angka teks dengan angka gambar
for ($i = 0; $i <= 9; $i++){
  $totpengunjunggbr = str_replace($i, "<img src=\"$folder/$i$ext\" alt=\"$i\">", $totpengunjunggbr);
} 
?>
<footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

    <!-- <div class="footer-newsletter">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
          </div>
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div> -->
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            
            <image src="<?=base_url()?>assets/img/footer-logo.png">
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Alamat</h4>

            <p>
              Jl. Gatot Subroto No 517<br>
              Bandung - Jawa barat<br>
            </p>                 
            
            <br>
            <h4>Kontak</h4>
            <p>
              <strong>Phone:</strong> +62 22 7312073<br>
              <strong>Email:</strong> Itmarketing@pindad.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Statistik Pengunjung</h4>
            
<?php 
echo "
       $totpengunjunggbr<br><br>
    
      <img src=\"$folder/hariini.png\"> Pengunjung hari ini : $pengunjung <br>
      <img src=\"$folder/total.png\"> Total pengunjung    : $totpengunjung <br><br>
      
      <img src=\"$folder/hariini.png\"> Hits hari ini  :  $hits<br>
      <img src=\"$folder/total.png\"> Total hits     :  $tothits<br><br> 
      
      <img src=\"$folder/online.png\"> Pengunjung Online : $pengunjungonline";
?>
          </div>

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>Karena Anda Kami Ada</h3>
            <p>Kami mengembangkan produk mengikuti pertumbuhan perusahaan yang semakin kompleks. Secara terus-menerus, kami melakukan inovasi yang memungkinkan dapat memenuhi kebutuhan bisnis dengan berbagai use case di beragam industri.</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>2020 TI - Pindad</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/ -->
        <!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
      </div>
    </div>
  </footer>
