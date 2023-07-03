<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Edit Modul Website</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/edit_kontak',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id]'>
                    <tr><th width='120px' scope='row'>Nama</th>   <td><input type='text' class='form-control' name='nama' value='$rows[nama]' required></td></tr>
                    <tr><th width='120px' scope='row'>akun</th>                       <td><input type='text' class='form-control' name='akun' value='$rows[akun]'required></td></tr>
                    <tr><th width='120px' scope='row'>nomor</th>                       <td><input type='text' class='form-control' name='nomor' value='$rows[nomor]'required></td></tr>
                    <tr><th width='120px' scope='row'>email</th>                       <td><input type='text' class='form-control' name='email' value='$rows[email]'required></td></tr>
                    </tbody>
                  </table>
                </div>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/datakontak'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
