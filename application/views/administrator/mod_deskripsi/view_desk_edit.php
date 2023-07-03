<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Edit Modul Website</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/edit_desk',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id]'>
                    <tr><th width='120px' scope='row'>Nama</th>   <td><input type='text' class='form-control' name='detail_nama' value='$rows[detail_nama]' required></td></tr>
                    <tr><th width='120px' scope='row'>Deskripsi</th>                       <td><input type='text' class='form-control' name='deskripsi' value='$rows[deskripsi]'required></td></tr>
                    <tr><th width='120px' scope='row'>Icon</th>                       <td><input type='text' class='form-control' name='icon' value='$rows[icon]'required></td></tr>
                    <tr><th width='120px' scope='row'>Warna</th>                       <td><input type='text' class='form-control' name='warna' value='$rows[warna]'required></td></tr>
                    <tr><th width='120px' scope='row'>Background</th>                       <td><input type='text' class='form-control' name='bg_desk' value='$rows[bg_desk]'required></td></tr>
                    </tbody>
                  </table>
                </div>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/datadesk'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
