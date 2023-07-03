<?php 
class Produk extends CI_Controller{
    public function index(){
        $data['produk'] = $this->model_utama->tampil_produk()->result();
        $data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
        $this->template->load(template().'/template',template().'/produk',$data);
        
     }
} ?>
