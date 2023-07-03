            
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Data Deskripsi</h3>
                  <div class="card-tools">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_desk'>Tambahkan Data</a>
                  
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                    <tr>
            <th>No.</th>
            <th>Nama</th>
            <th>Deskripsi</th>
            <th>Icon</th>
            <th>Warna</th>
            <th>Background</th>
            <th colspan="2 ">Aksi</th>
        </tr>
                    </thead>
                    <tbody>
                    <?php
        $no = 1;
        $produk = $this->model_produk->tampil_desk()->result_array();
        foreach($produk as $prd){?>
        
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $prd['detail_nama'] ?></td>
                <td><?php echo $prd['deskripsi'] ?></td>
                <td><?php echo $prd['icon'] ?></td>
                <td><?php echo $prd['warna'] ?></td>
                <td><?php echo $prd['bg_desk'] ?></td>
                <td><?php echo anchor('administrator/edit_desk/' .$prd['id'], '<div class="btn btn-success btn-sm"><i class="fas fa-edit"></i></div>') ?>
                <td><?php echo anchor('administrator/hapus4/' .$prd['id'], '<div class="btn btn-danger btn-sm"><i class="fas fa-trash" ></i></div>') ?>
                </td>
            </tr>
        <?php } 
                  ?>
                  </tbody>
                </table>
              </div></div></div>