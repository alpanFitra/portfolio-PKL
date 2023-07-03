<?php

class Model_produk extends CI_Model{
    public function tampil_produk(){
        return $this->db->get('produk');
    }
    public function detail($id){
        $result = $this->db->where('id',$id)->get('produk');
            if($result->num_rows() > 0){
                return $result->result();   
            }else{
                return FALSE;
            }
        }
        public function fitur($id){
            $result = $this->db->where('id',$id)->get('fitur');
                if($result->num_rows() > 0){
                    return $result->result();   
                }else{
                    return FALSE;
                }
            }
    public function tambah_produk($data,$table){
        $this->db->insert($table,$data);
    }
    
    public function tambah_client($data,$table){
        $this->db->insert($table,$data);
    }
    public function tambah_event($data,$table){
        $this->db->insert($table,$data);
    }
    public function tambah_desk($data,$table){
        $this->db->insert($table,$data);
    }
    public function tambah_kontak($data,$table){
        $this->db->insert($table,$data);
    }
    public function tambah_app($data,$table){
        $this->db->insert($table,$data);
    }
    public function edit_produk($where,$table){
        return $this->db->get_where($table,$where);
    }
    public function update(){
        $id        =$this->input->post('id');
        $detail_nama        =$this->input->post('detail_nama');
        $kategori        =$this->input->post('kategori');
        $client        =$this->input->post('client');
        $data = array (
            'detail_nama' =>$detail_nama,
            'kategori' =>$kategori,
            'client' =>$client
        );
        $where = array (
            'id' =>$id
        );
        $this->model_produk->update_data($where,$data,'produk');
        redirect('template_admin/data_produk/index');
    }
    public function update_data($where,$data,$table){
        $this->db->where($where);
        $this->db->update($table,$data);
    }
    public function tampil_client(){
        return $this->db->get('client');
    }
    public function tampil_app(){
        return $this->db->get('aplikasi');
    }
    public function tampil_event(){
        return $this->db->get('event');
    }
    public function tampil_fitur(){
        return $this->db->get('fitur');
    }
    public function tampil_desk(){
        return $this->db->get('deskripsi');
    }
    public function tampil_kontak(){
        return $this->db->get('kontak');
    }
    public function hapusdata($where,$table){
        $this->db->where($where);
        $this->db->delete($table);
    }
    public function editproduk($where,$table){
        return $this->db->get_where($table,$where);
    }
    
}
