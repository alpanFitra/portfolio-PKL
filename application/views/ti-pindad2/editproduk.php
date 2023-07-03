<div class="container-fluid">
    <h3><i class="fas fa-edit"></i>Edit Data Barang</h3>
    <?php foreach ($produk as $prd) : ?>    
        <form method="post" action="<?php echo base_url(). 'main/update' ?>">
    <div class="for-group">
        <label>Nama Barang</label>
        <input type="text" name="nama_brg" class="form-control" value="<?php echo $prd->detail_nama ?>">
    </div>

    <div class="for-group">
        <label>Detail produk</label>
        <input type="hidden" name="id_brg" class="form-control" value="<?php echo $prd->id ?>">
        <input type="text" name="keterangan" class="form-control" value="<?php echo $prd->detail_produk ?>">
    </div>

    <div class="for-group">
        <label>Kategori</label>
        <input type="text" name="kategory" class="form-control" value="<?php echo $prd->kategori ?>">
    </div>

    <div class="for-group">
        <label>Client</label>
        <input type="text" name="harga" class="form-control" value="<?php echo $prd->client ?>">
    </div>

    <div class="for-group">
        <label>Project Date</label>
        <input type="date" name="stok" class="form-control" value="<?php echo $prd->project_date ?>">
    </div>
    <div class="for-group">
        <label>Project Url</label>
        <input type="text" name="stok" class="form-control" value="<?php echo $prd->project_url ?>">
    </div>
    <div class="for-group">
        <label>Gambar</label>
        <input type="file" name="stok" class="form-control" value="<?php echo $prd->gambar ?>">
    </div>

    <button type="submit" class="btn btn-primary btn-sm">Simpan</button>

    </form>
    <?php endforeach; ?>
</div>