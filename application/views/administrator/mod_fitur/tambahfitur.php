<h3><i class="fas fa-edit"></i>Tambah Fitur</h3>
 <?PHP 
 $attributes = array('class'=>'form-horizontal','role'=>'form');
 echo form_open_multipart($this->uri->segment(1).'/tambah_fitur',$attributes); 
 ?>

<div class="form-group">
    <label >Detail Nama</label>
    <input type="text" name="detail_nama" class="form-control" >
</div>

<div class="form-group">
    <label >Detail Fitur</label>
    <input type="" name="detail_fitur" class="form-control">
</div>

<div class="form-group">
    <label >Gambar</label>
    <input type="file" name="gambar" class="form-control">
</div>

<button name="submit" type="submit" class="btn btn-primary">simpan</button>
<a href='tipindad2/datafitur'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>


<?php echo form_close(); ?>
