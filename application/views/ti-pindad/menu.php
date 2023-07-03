      <div class="logo float-left">
        <h1 class="text-light"><a href="<?=base_url()?>"><image src="<?=base_url()?>assets/img/logo-pindad.png"><span>  TI - PINDAD</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu float-right d-none d-lg-block">
        <ul>
          <li <?=$aktif1?>><a href="./">Home</a></li>
          <li <?=$aktif2?>><a href="<?=base_url()?>main/about">Tentang Kami</a></li>
          <li <?=$aktif3?>><a href="<?=base_url()?>main/services">Layanan</a></li>
          
          
          <?php //if($aktif4==""){$aktif4="class='drop-down'";} ?>
          
          <li <?=$aktifx00?>><a href="">Produk</a>
            <ul>
              <li <?=$aktifx02?>><a href="<?=base_url()?>main/produk">Katalog</a></li>
              <li <?=$aktifx01?>><a href="#">Aplikasi</a>
                <ul>
                  <li <?=$aktif41?>><a href="<?=base_url()?>main/detail_prod/hris">HRIS</a></li>
                  <li <?=$aktif42?>><a href="<?=base_url()?>main/detail_prod/office">e-office</a></li>
                  <li <?=$aktif43?>><a href="<?=base_url()?>main/detail_prod/eis">EIS</a></li>
                  <?php 
                  if(isset($_SESSION['token'])){
                    if($_SESSION['token']=="idtoken123456"){
                      echo "<li $aktif44><a target = '_blank' href='redx'>RED-X</a></li>";
                      echo "<li><a target = '_blank' href='jdih'>JDI</a></li>";
                      echo "<li><a target = '_blank' href='paskhas/asset/files/PAPARAN%20APLIKASI%20PASKHAS%20-%201311-2020.pdf'>INVENTORY</a></li>";
                    }else{
                      echo "<li $aktif44><a href='".base_url()."main/detail_prod/redx'>RED-X</a></li>";
                      echo "<li $aktif45><a href='".base_url()."main/detail_prod/jdih'>JDI</a></li>";
                      echo "<li $aktif46><a href='".base_url()."main/detail_prod/inventory'>INVENTORY</a></li>";

                    }
                  }
                  ?>
                  
                  
                  
                </ul>
              </li>
              <li <?=$aktifx03?>><a href="#">Cyber Security <br>& Electronic Workshop</a>
                <ul>
                  <li <?=$aktif47?>><a href='<?=base_url()?>main/detail_prod/panicbutton'>Panic Button</a></li>
                  <li <?=$aktif48?>><a href='<?=base_url()?>main/detail_prod/security'>Document Security</a></li>
                  <li <?=$aktif49?>><a href='<?=base_url()?>main/detail_prod/awareness'>HR Security Awareness</a></li>
                </ul>
              </li>
              <li class="drop-down <?=$aktifx04?>"><a href="#">Infrastruktur</a>
                <ul>
                  <li <?=$aktif50?>><a href='<?=base_url()?>main/detail_prod/network'>Networking</a></li>
                  <li <?=$aktif51?>><a href='<?=base_url()?>main/detail_prod/server'>Server</a></li>
                  
                  
                  
                </ul>
              </li>
              
            </ul>
          </li>
          <!-- <li <?=$aktif9?>><a href="">e-katalog</a>
            <ul>
              <li><a target='_blank' href="<?=base_url()?>assets/files/TI pindad.pdf">Layanan Aplikasi</a></li>
              <li><a target='_blank' href="<?=base_url()?>assets/files/Pindad Smart Integrated Security System.pdf">Pindad Smart City Concept</a></li>
              <li><a target='_blank' href="<?=base_url()?>assets/files/Pindad Inventory & Logistic.pdf">Pindad Inventory & Logistic</a></li>
              <li><a target='_blank' href="<?=base_url()?><?=base_url()?>assets/files/Pindad Smart City Concept.pdf">Pindad Smart Integrated Security System</a></li>
              
             
              
            </ul>
          </li> -->
          <li <?=$aktif5?>><a href="<?=base_url()?>main/klien">Klien</a></li>
          <li <?=$aktif6?>><a href="<?=base_url()?>main/contact">Kontak Kami</a></li>
          <li <?=$aktif7?>><a href="<?=base_url()?>main/login">Login</a></li>
          
        </ul>
      </nav><!-- .nav-menu -->
