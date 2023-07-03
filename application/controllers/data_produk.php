<?php

class Data_produk extends CI_Controller{
    public function index(){
        $data['produk'] = $this->model_produk->tampil_produk()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('template_admin/data_produk',$data);
        $this->load->view('template_admin/footer');
    }
    public function tambah_aksi(){
        $detail_nama = $this->input->post('detail_nama');
        $kategori = $this->input->post('kategori');
        $gambar = $_FILES['gambar']['name'];
        if ($gambar='') {}else{
            $config ['upload_path']= './produk';
            $config ['allowed_types']= '.jpg|jpeg|png|gif';

            $this->load->library('upload',$config);
            if (!$this->upload->do_upload('gambar')) {
                echo "Gambar Gagal";
            }else{
                $gambar = $this->upload->data('file_name');
            }
        }
        $data = array(
            'detail_nama'=> $detail_nama,
            'kategori' => $kategori,
            'gambar'=> $gambar
        );
        $this->model_produk->tambah_produk($data,'produk');
        redirect('data_produk/index');
    }
}