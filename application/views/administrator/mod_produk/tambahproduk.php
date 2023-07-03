 <h3><i class="fas fa-edit"></i>Tambah Produk</h3>
 <?PHP 
 $attributes = array('class'=>'form-horizontal','role'=>'form');
 echo form_open_multipart($this->uri->segment(1).'/tambah_produk',$attributes); 
 ?>

<div class="form-group">
    <label >Detail Nama</label>
    <input type="text" name="detail_nama" class="form-control" >
</div>

<div class="form-group">
    <label>Kategori</label>
    <select class="form-control" name="kategori">
         <option>aplikasi</option>
         <option>device</option>
          <option>workshop</option>
    </select>
</div>

<div class="form-group">
    <label >Detail Produk</label>
    <input type="" name="detail_produk" class="form-control">
</div>

<div class="form-group">
    <label >Client </label>
    <input type="text" name="client" class="form-control">
</div>

<div class="form-group">
    <label >Tanggal Project </label>
    <input type="date" name="project_date" class="form-control">
</div>

<div class="form-group">
    <label >Project Url</label>
    <input type="text" name="project_url" class="form-control">
</div>

<div class="form-group">
    <label >Gambar</label>
    <input type="file" name="gambar" class="form-control">
</div>

<button name="submit" type="submit" class="btn btn-primary">simpan</button>
<a href='tipindad2/dataproduk'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>


<?php echo form_close(); ?>
