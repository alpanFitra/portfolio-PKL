            
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Data Produk</h3>
                  <div class="card-tools">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_produk'>Tambahkan Data</a>
                  
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                    <tr>
            <th>No.</th>
            <th>Nama</th>
            <th>Kategori</th>
            <th>Detail Produk</th>
            <th>client</th>
            <th>Tanggal Project</th>
            <th>Project url</th>
            <th>gambar</th>
            <th colspan="2 ">Aksi</th>
        </tr>
                    </thead>
                    <tbody>
                    <?php
        $no = 1;
        $produk = $this->model_produk->tampil_produk()->result_array();
        foreach($produk as $prd){?>
        
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $prd['detail_nama'] ?></td>
                <td><?php echo $prd['kategori'] ?></td>
                <td><?php echo $prd['detail_produk'] ?></td>
                <td><?php echo $prd['client'] ?></td>
                <td><?php echo $prd['project_date'] ?></td>
                <td><?php echo $prd['project_url'] ?></td>
                <td><?php echo $prd['gambar'] ?></td>
                <td><?php echo anchor('administrator/edit_produk/' .$prd['id'], '<div class="btn btn-success btn-sm"><i class="fas fa-edit"></i></div>') ?>
                <td><?php echo anchor('administrator/hapus/' .$prd['id'], '<div class="btn btn-danger btn-sm"><i class="fas fa-trash" ></i></div>') ?>
                </td>
            </tr>
        <?php } 
                  ?>
                  </tbody>
                </table>
              </div></div></div>