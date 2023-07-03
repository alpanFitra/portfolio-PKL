<?php

defined('BASEPATH') OR exit('No direct script access allowed');
class Main extends CI_Controller {
	public function index(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		// $produk = $this->model_produk->tampil_produk()->result_array();
		$this->template->load(template().'/template',template().'/content',$data);
	}
	public function about(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		$this->template->load(template().'/template',template().'/about',$data);

	}
	public function services(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		$this->template->load(template().'/template',template().'/services',$data);

	}

	public function produk(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();

		$this->template->load(template().'/template',template().'/produk',$data);
		

	}
	public function detail_prod(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		$this->template->load(template().'/template',template().'/detail_prod',$data);

	}
	public function klien(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		$this->template->load(template().'/template',template().'/klien',$data);

	}
	public function contact(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		$this->template->load(template().'/template',template().'/contact',$data);
	}
	public function login(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		$this->template->load(template().'/template',template().'/login',$data);
	}
	public function page(){
		$data['produk'] = $this->model_produk->tampil_produk()->result();
		$this->load->view('ti-pindad2/template',$data);
     }
		public function detail($id){
		// $where = array('id'=>$data);
			$data['produk'] = $this->model_produk->detail($id);
			
		// $this->load->model('model_produk');
		// $detail = $this->model_produk->detail_produk($id);
		// $data['detail'] = $detail;
		$this->template->load(template().'/template',template().'/detail_produk/detail',$data);
		}
		public function admin(){
			$data['produk'] = $this->model_produk->tampil_produk()->result();
			$this->template->load(template().'/template_admin/admin',template().'/template_admin/admin',$data);
		}
		public function data_produk(){
			$data['client'] = $this->model_produk->tampil_client()->result();
			$this->template->load(template().'/template_admin/data_produk',template().'/template_admin/data_produk',$data);
		}
		public function data_client(){
			$data['produk'] = $this->model_produk->tampil_produk()->result();
			$this->template->load(template().'/template_admin/data_client',template().'/template_admin/data_client',$data);
		}
			public function login2(){
				$this->form_validation->set_rules('username','Username','required');
				$this->form_validation->set_rules('password','Password','required');
				if($this->form_validation->run() == FALSE){
					$this->template->load(template().'/form_login',template().'/form_login',$data);
				}
				else{
					$verify = $this->model_login->cek_login();
		
					if($verify == FALSE){
						$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Username atau Password Anda Salah!
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					  </div>');
					  redirect('main/login2');
					}else{
						$this->session->set_userdata('username',$verify->username);
						$this->session->set_userdata('role_id',$verify->role_id);
		
						switch($verify->role_id){
							case 1 : redirect('main');
							break;
							case 2 : redirect('main/admin');
							break;
							default: break;
						}
					}
				}
			}
			public function logout(){
				$this->session->sess_destroy();
				redirect('main/login2');
			}
			public function tambah_aksi(){
				$detail_nama = $this->input->post('detail_nama');
				$kategori = $this->input->post('kategori');
				$detail_produk = $this->input->post('detail_produk');
				$client = $this->input->post('client');
				$project_date = $this->input->post('project_date');
				$project_url = $this->input->post('project_url');
				$gambar = $_FILES['gambar']['name'];
				if ($gambar = '') {
				} else {
					$config['upload_path'] = './template/ti-pindad2/produk/img';
					$config['allowed_types'] = 'jpg|jpeg|png|gif';

					$this->load->library('upload', $config);
					if (!$this->upload->do_upload('gambar')) {
						echo "Gambar gagal diupload!";
					} else {
						$gambar = $this->upload->data('file_name');
					}
				}
				$data = array(
					'detail_nama'=> $detail_nama,
					'kategori' => $kategori,
					'detail_produk' => $detail_produk,
					'client' => $client,
					'project_date' => $project_date,
					'project_url' => $project_url,
					'gambar' => $gambar
				);
				$this->model_produk->tambah_produk($data,'produk');
				redirect('main/data_produk');
			}
			public function tambah_aksi2(){
				$detail_client = $this->input->post('detail_client');
				$gambar = $this->input->post('gambar');
				
				$data = array(
					'detail_client'=> $detail_client,
					'gambar'=> $gambar
				);
				$this->model_produk->tambah_client($data,'client');
				redirect('main/data_client');
			}
			public function hapus($id){
				$where = array('id' => $id);
				$this->model_produk->hapusdata($where, 'produk');
				redirect('administrator/dataproduk');
			}
			public function hapus2($id){
				$where = array('id' => $id);
				$this->model_produk->hapusdata($where, 'produk');
				redirect('administrator/dataclient');
			}
			public function edit($id){
				$where = array('id' => $id);
				$data['produk'] = $this->model_produk->editproduk($where, 'produk')->result();
				$this->template->load(template().'/editproduk',template().'/editproduk',$data);
			}
			
}
