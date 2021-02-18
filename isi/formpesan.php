   <?php
            $idj = $_GET['idp'];
             $query1 = "select * from jadwal, kendaraan, kota_asal, kota_tujuan where  
             kendaraan.id_mobil  = jadwal.id_mobil 
             and jadwal.id_kota_asal = kota_asal.id_kota_asal and  
             jadwal.id_kota_tujuan = kota_tujuan.id_kota_tujuan 

             and jadwal.id_jadwal = ".$idj;
            
            $result=mysqli_query($kdb,$query1) or die(mysql_error());
            while($row=mysqli_fetch_object($result))
               {
            ?>
  
     <div class="panel panel-default" style="color:black">
        <div class="panel-body">Input Data Pesan</div>
    </div>
        <div class="panel panel-primary">
            <div class="panel-body" style="color:black;">         
                                                       

                                                          <div class="col-md-12 ">
                                                            <form class="form-controll" action="index.php?menu=12&i=<?php echo $row -> id_jadwal; ?>" method="post">
                                                                <?php 
                                                                        if(isset($_SESSION['username'])){
                                                                    
                                                                        $zet = $_SESSION['username'];

                                                                    $querya = "select * from member where username = '$zet' ";

                                                                        $resultan=mysqli_query($kdb,$querya) or die(mysql_error());
                                                                        while($rom=mysqli_fetch_object($resultan))
                                                                           {
                                                                    ?>
                                                                <div class="input-group-md">
                                                                   ID Jadwal<input class="form-control" type="text" id="id_jadwal"  name="id_jadwal"  maxlength="30" value=" <?php echo $idj; ?>" readonly/>
                                                                </div>
																<div class="input-group-md">
                                                                   Nama Pemesan <input class="form-control" type="text" id="username"name="username"  maxlength="30" value=" <?php echo $rom -> username; ?>" readonly/>
                                                                </div>
																
																<div class="input-group-md">
                                                                   No Telepon <input class="form-control" type="text" id="telepon"name="telepon"  maxlength="30" value=" <?php echo $rom -> telepon; ?>"readonly/>
                                                                </div>
                                                                <div class="input-group-md">
                                                                    <input class="hidden form-control" type="text" id="id_member"name="id_member"  maxlength="30" value=" <?php echo $rom -> id_member; ?>"readonly/>
                                                                </div>
                                                                <div class="input-group-md">
                                                                    <input class="hidden form-control" type="text" id="status" name="status"  maxlength="30" value="Belum Bayar" />
                                                                </div>
																
                                                                 
                                                                        <?php } } ?>
                                                                <div class="input-group-md">
                                                                    <span class="input-group-btn">
                                                                       <span class="glyphicon glyphicon-min" aria-hidden="true"></span>
                                                                      </span>

              
																
																</select>
																<label>No Kursi</label>
																  <select id="nomor_kursi" name="nomor_kursi" class="form-control">
																    <option value="">Pilih Kursi</option>
																	<?php
																	
															 $id_jadwal = $row -> id_jadwal; 
															   $result2="SELECT nomor_kursi from pesan where id_jadwal=$id_jadwal";
															   $d = mysqli_query($kdb,$result2);
							   
														    $sql1="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=1";
															$res1=mysqli_query($kdb,$sql1);
															$ou = mysqli_fetch_array($res1);
															if ( $ou[0]  == 1){
															echo "<option disabled/>1 (terisi)</option>";}
															else{
															echo "<option value='1'>1</option>";}
															
															$sql2="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=2";
															$res2=mysqli_query($kdb,$sql2);
															$ou2 = mysqli_fetch_array($res2);
															if ( $ou2[0]  == 1){
															echo "<option disabled/>2 (terisi)</option>";}
															else{
															echo "<option value='2'>2</option>";}
															
															$sql3="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=3";
															$res3=mysqli_query($kdb,$sql3);
															$ou3 = mysqli_fetch_array($res3);
															if ( $ou3[0]  == 1){
															echo "<option disabled/>3 (terisi)</option>";}
															else{
															echo "<option value='3'>3</option>";}
															
															$sql4="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=4";
															$res4=mysqli_query($kdb,$sql4);
															$ou4 = mysqli_fetch_array($res4);
															if ( $ou4[0]  == 1){
															echo "<option disabled/>4 (terisi)</option>";}
															else{
															echo "<option value='4'>4</option>";}
															
															$sql5="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=5";
															$res5=mysqli_query($kdb,$sql5);
															$ou5 = mysqli_fetch_array($res5);
															if ( $ou5[0]  == 1){
															echo "<option disabled/>5 (terisi)</option>";}
															else{
															echo "<option value='5'>5</option>";}
															
															$sql6="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=6";
															$res6=mysqli_query($kdb,$sql6);
															$ou6 = mysqli_fetch_array($res6);
															if ( $ou6[0]  == 1){
															echo "<option disabled/>6 (terisi)</option>";}
															else{
															echo "<option value='6'>6</option>";}
															
															$sql7="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=7";
															$res7=mysqli_query($kdb,$sql7);
															$ou7 = mysqli_fetch_array($res7);
															if ( $ou7[0]  == 1){
															echo "<option disabled/>5 (terisi)</option>";}
															else{
															echo "<option value='7'>7</option>";}
															
															$sql8="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=8";
															$res8=mysqli_query($kdb,$sql8);
															$ou8 = mysqli_fetch_array($res8);
															if ( $ou8[0]  == 1){
															echo "<option disabled/>8 (terisi)</option>";}
															else{
															echo "<option value='8'>8</option>";}
															
															$sql9="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=9";
															$res9=mysqli_query($kdb,$sql9);
															$ou9 = mysqli_fetch_array($res9);
															if ( $ou9[0]  == 1){
															echo "<option disabled/>9 (terisi)</option>";}
															else{
															echo "<option value='9'>9</option>";}
															
															$sql10="SELECT count(nomor_kursi) from pesan where id_jadwal=$id_jadwal and nomor_kursi=10";
															$res10=mysqli_query($kdb,$sql10);
															$ou10 = mysqli_fetch_array($res10);
															if ( $ou10[0]  == 1){
															echo "<option disabled/>10 (terisi)</option>";}
															else{
															echo "<option value='10'>10</option>";}
														  ?>                     
																	</select><br>
															  
															  <!-- /.form-group -->
                                                                 <p><input type="submit" name="action" value="Simpan" class="btn btn-primary btn-sm"></p>
                                                              </form>
                                                        </div>

                                                        <div class="col-md-5">
                                                            <hr>
                                                            <p>  Kota Asal            : <?php echo $row -> nm_kota_asal; ?> </p>
                                                            <p>  Kota Tujuan          : <?php echo $row -> nm_kota_tujuan; ?></p>
                                                            <p>  Tanggal Berangkat    : <?php echo $row -> tgl_berangkat; ?></p>
                                                            <br>
                                                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                                          <div class="btn-group btn-group-md "  >
                                                          </div>
                                                        </div>
                                                        </div>
                                                    <div class="col-md-5">
                                                        <hr>
                                                        <img src="img/kursi.png"/ width="300">
                                                    </div>
                                                    <div class="col-md-2">
                                                       <br>
                                                        
                                  <?php } ?>
														                     
                                                        
                                                        
                                                    </div>
                                                          
                                                          </div> 

            </div>
            
       
            
    



