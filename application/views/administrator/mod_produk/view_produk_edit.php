<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Edit Modul Website</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/edit_produk',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id]'>
                    <tr><th width='120px' scope='row'>Nama Produk</th>   <td><input type='text' class='form-control' name='detail_nama' value='$rows[detail_nama]' required></td></tr>
                    <tr><th width='120px' scope='row'>Client</th>                       <td><input type='text' class='form-control' name='client' value='$rows[client]'required></td></tr>
                    
                    <tr><th width='120px' scope='row'>detail Produk</th>                       <td><input type='text' class='form-control' name='detail_produk' value='$rows[detail_produk]'required></td></tr>
                    <tr><th scope='row'>kategori</th>    <td><select class='form-control' name='kategori' required>
                    <option value=''>- Pilih -</option>";
                    $data = array('aplikasi','device','workshop');
                    for ($i=0; $i < count($data) ; $i++) { 
                      if ($rows['kategori']==$data[$i]){
                        echo "<option value='".$data[$i]."' selected>".$data[$i]."</option>";
                      }else{
                        echo "<option value='".$data[$i]."'>".$data[$i]."</option>";
                      }
                    }
                 echo "</select></td></tr>
                    <tr><th width='120px' scope='row'>Project Date</th>                       <td><input type='date' class='form-control' name='project_date' value='$rows[project_date]'required></td></tr>
                    <tr><th width='120px' scope='row'>Project url</th>                      <td> <input type='text' class='form-control' name='project_url' value='$rows[project_url]' required></td></tr>
                    <tr><th scope='row'>Ganti Foto</th>          <td><input type='file' class='form-control' name='gambar'>";
                    if ($rows['gambar']!=''){ echo " Gambar Saat ini : <a target='_BLANK' href='".base_url()."template/ti-pindad2/produk/img/$rows[gambar]'>$rows[gambar]</a>"; } echo "</td></tr>
                    </tbody>
                  </table>
                </div>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/dataproduk'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
