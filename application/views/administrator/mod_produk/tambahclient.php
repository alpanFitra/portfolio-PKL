<h3><i class="fas fa-edit"></i>Tambah Produk</h3>
 <?PHP 
 $attributes = array('class'=>'form-horizontal','role'=>'form');
 echo form_open_multipart($this->uri->segment(1).'/tambah_client',$attributes); 
 ?>

<div class="form-group">
    <label >Detail Nama</label>
    <input type="text" name="detail_client" class="form-control">
</div>

<div class="form-group">
    <label >Gambar</label>
    <input type="file" name="gambar" class="form-control">
</div>

<button name="submit" type="submit" class="btn btn-primary">simpan</button>
<a href='tipindad2/dataproduk'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>


<?php echo form_close(); ?>