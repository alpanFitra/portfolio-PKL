<?php

class Detail extends CI_Controller{
    public function index(){
        $data['produk'] = $this->model_produk->tampil_produk()->result();
        $this->load->view('detail_produk/detail',$data);
    }
    
    
}