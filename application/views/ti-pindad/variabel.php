<?php
$home = "TI Pindad Persero - Index";
$about = "About - TI-Pindad";
$service = "Services - TI-Pindad";
$portfolio = "Produk - TI-Pindad";
$Klien = "Klien - TI-Pindad";
$kontak = "Kontak - TI-Pindad";
$detail_prod_hris = "HRIS - TI-Pindad";
$detail_prod_eoffice = "e-office - TI-Pindad";
$detail_prod_eis = "EIS - TI-Pindad";
$detail_prod_redx = "RED-X - TI-Pindad";
$detail_prod_jdih = "JDIH - TI-Pindad";
$detail_prod_workshop = "WORKSHOP - TI-Pindad";
$detail_prod_inventory = "INVENTORY - TI-Pindad";
$detail_prod_panicbutton = "PANIC BUTTON - TI-Pindad";
$detail_prod_networking = "NETWORKING - TI-Pindad";
$detail_prod_server = "SERVER - TI-Pindad";
$login = "Login";

$aktif1 = "";
$aktif2 = "";
$aktif3 = "";
$aktif4 = "";
$aktif5 = "";
$aktif6 = "";
$aktif7 = "";
$aktif8 = "";
$aktif9 = "class='drop-down'";

switch ($aktif) {
  case "":
    $judul = $home;
    $aktif1 = "class='active'";
    $aktifx00 = "class='drop-down '";
    $aktifx01 = "class='drop-down'";
    break;  
  case "about":
    $judul = $about;
    $aktif2 = "class='active'";
    $aktifx00 = "class='drop-down '";
    $aktifx01 = "class='drop-down'";
    break;
  case "services":
    $judul = "$service";
    $aktif3 = "class='active'";
    $aktifx00 = "class='drop-down '";
    $aktifx01 = "class='drop-down'";
    break;
  case "klien":
    $judul = $Klien;
    $aktif5 = "class='active'";
    $aktifx00 = "class='drop-down '";
    $aktifx01 = "class='drop-down'";
    break;
  case "contact":
    $judul = $kontak;
    $aktif6 = "class='active'";
    $aktifx00 = "class='drop-down '";
    $aktifx01 = "class='drop-down'";
    break;  
  case "login":
    $judul = $login;
    $aktif7 = "class='active'";
    $aktifx00 = "class='drop-down '";
    $aktifx01 = "class='drop-down'";
    break;  
   case "produk":
    $judul = "Katalog";
    $aktifx00 = "class='drop-down active'";
    $aktifx01 = "class='drop-down'";
    $aktifx02 = "class='active'";
    $aktifx03 = "class='drop-down'";
    break;    

  default :
    
    $aktifx00 = "class='drop-down '";
    $aktifx01 = "class='drop-down'";
    
}

switch ($aktifx) {

  case "hris":
    $judul = $detail_prod_hris;
    $aktif41 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx01 = "class='drop-down active'";
    $aktifx03 = "class='drop-down'";
    break;
  case "office":
    $judul = $detail_prod_eoffice;
    $aktif42 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx01 = "class='drop-down active'";
    $aktifx03 = "class='drop-down'";
    break;
  case "eis":
    $judul = $detail_prod_eis;
    $aktif43 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx01 = "class='drop-down active'";
    $aktifx03 = "class='drop-down'";
    break;  
  case "redx":
    $judul = $detail_prod_redx;
    $aktif44 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx01 = "class='drop-down active'";
    $aktifx03 = "class='drop-down'";
    break;
  case "jdih":
    $judul = $detail_prod_jdih;
    $aktif45 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx01 = "class='drop-down active'";
    $aktifx03 = "class='drop-down'";
    break;  
  case "inventory":
    $judul = $detail_prod_inventory;
    $aktif46 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx01 = "class='drop-down active'";
    $aktifx03 = "class='drop-down'";
    break;  
  case "panicbutton":
    $judul = $detail_prod_panicbutton;
    $aktif47 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx03 = "class='drop-down active'";
    break;  
  case "security":
    $judul = $detail_prod_panicbutton;
    $aktif48 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx03 = "class='drop-down active'";
    break;    
   case "awareness":
    $judul = $detail_prod_panicbutton;
    $aktif49 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx03 = "class='drop-down active'";
    break;      
   case "network":
    $judul = $detail_prod_networking;
    $aktif50 = "class='active'";
    $aktifx00 = "class='drop-down active'";
    $aktifx03 = "class='drop-down'";
    $aktifx04 = "active";
    break;   
   case "server":
    $judul      = $detail_prod_server;
    $aktif51    = "class='active'";
    $aktifx00   = "class='drop-down active'";
    $aktifx03   = "class='drop-down'";
    $aktifx04   = "active";
    break;  
}


?>

<style type="text/css">
		.the-menu a.active{ color: #a9e8b2 !important; }
    .cresta-whatsapp-chat-box, .cresta-whatsapp-chat-button {
    z-index: 1000;
}
    .cresta-whatsapp-chat-box {
    width: 60px;
    height: 60px;
    display: block;
    position: fixed;
    bottom: 15px;
    left: 20px;
    cursor: pointer;
    text-align: center;
    line-height: 60px;
    background: #25d366;
    border-radius: 100%;
    -webkit-box-shadow: 1px 1px 4px 0px rgba(0,0,0,0.3);
    -moz-box-shadow: 1px 1px 4px 0px rgba(0,0,0,0.3);
    box-shadow: 1px 1px 4px 0px rgba(0,0,0,0.3);
}
    .cresta-whatsapp-chat-box svg#whatsapp-msng-icon {
    width: 30px;
    height: 30px;
    position: absolute;
    top: 15px;
    left: 15px;
    opacity: 1;
    overflow: hidden;
    -webkit-transition: opacity 160ms ease-in-out;
    -moz-transition: opacity 160ms ease-in-out;
    -o-transition: opacity 160ms ease-in-out;
    transition: opacity 160ms ease-in-out;
}
</style> 
<script type="text/javascript" src="https://al-fithrah.dkm.web.id/template/afp/jscript/jquery-3.2.1.min.js"></script>
<div class="cresta-whatsapp-chat-box onBoth">
				<svg id="whatsapp-msng-icon" data-name="whatsapp icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 800"><path d="M519 454c4 2 7 10-1 31-6 16-33 29-49 29-96 0-189-113-189-167 0-26 9-39 18-48 8-9 14-10 18-10h12c4 0 9 0 13 10l19 44c5 11-9 25-15 31-3 3-6 7-2 13 25 39 41 51 81 71 6 3 10 1 13-2l19-24c5-6 9-4 13-2zM401 200c-110 0-199 90-199 199 0 68 35 113 35 113l-20 74 76-20s42 32 108 32c110 0 199-89 199-199 0-111-89-199-199-199zm0-40c133 0 239 108 239 239 0 132-108 239-239 239-67 0-114-29-114-29l-127 33 34-124s-32-49-32-119c0-131 108-239 239-239z" transform="scale(1.2, 1.2), translate(-65 -65)" style="fill:#ffffff"></path></svg>
</div>
<script>
				(function($) {
					'use strict';
					$(document).ready(function() {
						$('.cresta-whatsapp-chat-box').click(function() {
							var baseUrl = 'https://chat.whatsapp.com/KMg5ySecsgD8ymFP0R4mP3';
							window.open(baseUrl, '_blank');
						});
					});
				})(jQuery);
</script>
