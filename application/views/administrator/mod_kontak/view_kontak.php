            
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Data Deskripsi</h3>
                  <div class="card-tools">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_kontak'>Tambahkan Data</a>
                  
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                    <tr>
            <th>No.</th>
            <th>Nama</th>
            <th>akun</th>
            <th>nomor</th>
            <th>email</th>
            <th colspan="2 ">Aksi</th>
        </tr>
                    </thead>
                    <tbody>
                    <?php
        $no = 1;
        $produk = $this->model_produk->tampil_kontak()->result_array();
        foreach($produk as $prd){?>
        
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $prd['nama'] ?></td>
                <td><?php echo $prd['akun'] ?></td>
                <td><?php echo $prd['nomor'] ?></td>
                <td><?php echo $prd['email'] ?></td>
                <td><?php echo anchor('administrator/edit_kontak/' .$prd['id'], '<div class="btn btn-success btn-sm"><i class="fas fa-edit"></i></div>') ?>
                <td><?php echo anchor('administrator/hapus7/' .$prd['id'], '<div class="btn btn-danger btn-sm"><i class="fas fa-trash" ></i></div>') ?>
                </td>
            </tr>
        <?php } 
                  ?>
                  </tbody>
                </table>
              </div></div></div>