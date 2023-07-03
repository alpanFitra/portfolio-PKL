<h3><i class="fas fa-edit"></i>Tambah Deskripsi</h3>
 <?PHP 
 $attributes = array('class'=>'form-horizontal','role'=>'form');
 echo form_open_multipart($this->uri->segment(1).'/tambah_kontak',$attributes); 
 ?>

<div class="form-group">
    <label >Nama</label>
    <input type="text" name="nama" class="form-control" >
</div>

<div class="form-group">
    <label >akun</label>
    <input type="text" name="akun" class="form-control">
</div>

<div class="form-group">
    <label >nomor</label>
    <input type="text" name="nomor" class="form-control">
</div>

<div class="form-group">
    <label >email</label>
    <input type="text" name="email" class="form-control">
</div>
<button name="submit" type="submit" class="btn btn-primary">simpan</button>
<a href='tipindad2/datakontak'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>


<?php echo form_close(); ?>
