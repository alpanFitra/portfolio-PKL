<?php

defined('BASEPATH') OR exit('No direct script access allowed');
class Tipindad2 extends CI_Controller {

    function dataproduk(){
		cek_session_akses('manajemenuser',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('users','username','DESC');
		$this->template->load('administrator/template','administrator/mod_produk/view_produk',$data);
	}
	function dataclient(){
		cek_session_akses('manajemenuser',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('users','username','DESC');
		$this->template->load('administrator/template','administrator/mod_produk/view_client',$data);
	}
	
    function tambah_produk(){
		cek_session_akses('listberita',$this->session->id_session);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_berita/';
	        $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
	        $config['max_size'] = '3000'; // kb
	        $this->load->library('upload', $config);
	        $this->upload->do_upload('k');
	        $hasil=$this->upload->data();
            
            $config['source_image'] = 'asset/foto_berita/'.$hasil['file_name'];
            $config['wm_text'] = 'phpmu.com';
            $config['wm_type'] = 'text';
            $config['wm_font_path'] = './system/fonts/texb.ttf';
            $config['wm_font_size'] = '26';
            $config['wm_font_color'] = 'ffffff';
            $config['wm_vrt_alignment'] = 'middle';
            $config['wm_hor_alignment'] = 'center';
            $config['wm_padding'] = '20';
            $this->load->library('image_lib',$config);
            $this->image_lib->watermark();


            $detail_nama = $this->input->post('detail_nama');
				$kategori = $this->input->post('kategori');
				$detail_produk = $this->input->post('detail_produk');
				$client = $this->input->post('client');
				$project_date = $this->input->post('project_date');
				$project_url = $this->input->post('project_url');

				$data = array(
					'detail_nama'=> $detail_nama,
					'kategori' => $kategori,
					'detail_produk' => $detail_produk,
					'client' => $client,
					'project_date' => $project_date,
					'project_url' => $project_url,
					'gambar' => $gambar
				);
		
            $this->model_app->view_ordering($data,'produk');
				redirect('dataproduk');
		}else{
            $data['tag'] = $this->model_app->view_ordering('tag','id_tag','DESC');
            $data['record'] = $this->model_app->view_ordering('kategori','id_kategori','DESC');
			$this->template->load('administrator/template','administrator/mod_produk/tambahproduk',$data);
		}
	}




}