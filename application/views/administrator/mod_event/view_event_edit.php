<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Edit Modul Website</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/edit_event',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id]'>
                    <tr><th width='120px' scope='row'>Nama</th>   <td><input type='text' class='form-control' name='nama' value='$rows[nama]' required></td></tr>
                    <tr><th width='120px' scope='row'>Deskripsi</th>                       <td><input type='text' class='form-control' name='deskripsi' value='$rows[deskripsi]'required></td></tr>
                    <tr><th width='120px' scope='row'>tim</th>                       <td><input type='text' class='form-control' name='tim' value='$rows[tim]'required></td></tr>
                    <tr><th scope='row'>Ganti Foto</th>          <td><input type='file' class='form-control' name='gambar'>";
                    if ($rows['gambar']!=''){ echo " Gambar Saat ini : <a target='_BLANK' href='".base_url()."template/ti-pindad2/assets/img/event/$rows[gambar]'>$rows[gambar]</a>"; } echo "</td></tr>
                    </tbody>
                  </table>
                </div>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/dataevent'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
