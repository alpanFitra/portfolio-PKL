<h3><i class="fas fa-edit"></i>Tambah Deskripsi</h3>
 <?PHP 
 $attributes = array('class'=>'form-horizontal','role'=>'form');
 echo form_open_multipart($this->uri->segment(1).'/tambah_event',$attributes); 
 ?>

<div class="form-group">
    <label >Nama</label>
    <input type="text" name="nama" class="form-control" >
</div>

<div class="form-group">
    <label >Deskripsi</label>
    <input type="text" name="deskripsi" class="form-control">
</div>

<div class="form-group">
    <label >tim</label>
    <input type="text" name="tim" class="form-control">
</div>

<div class="form-group">
    <label >gambar</label>
    <input type="file" name="gambar" class="form-control">
</div>
<button name="submit" type="submit" class="btn btn-primary">simpan</button>
<a href='tipindad2/dataevent'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>


<?php echo form_close(); ?>
