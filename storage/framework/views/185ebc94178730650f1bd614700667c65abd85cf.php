<?php $__env->startSection('script'); ?>
  $('#dataIkan').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Kolam Diskusi'); ?>

<?php $__env->startSection('main'); ?>
  <div class="container-fluid">
    <div class="panel panel-primary">
      <div class="panel-heading">List Ikan</div>
      <div class="panel-body">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#create" name="create">Tambah</button>
        <br><br>
        
            <div class="modal fade" id="create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Tambah Data Ikan</h4>
                  </div>
                <form class="form-horizantal" action="<?php echo e(url(action('dataIkanController@tambahIkan'))); ?>" method="post">
                  <?php echo e(csrf_field()); ?>

                  <div class="modal-body">
                    <div class="row">
                        <div class="form-group">
                          <label for="namaIkan" class="col-md-4 control-label">Nama Ikan</label>
                          <div class="col-md-8">
                            <input type="text" name="namaIkan" value="" class="form-control">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="famili" class="col-md-4 control-label">Famili</label>
                          <div class="col-md-8">
                            <input type="text" name="famili" value="" class="form-control">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="umurProduktif" class="col-md-4 control-label">Umur Produktif</label>
                          <div class="col-md-8">
                            <input type="text" name="umurProduktif" value="" class="form-control">
                          </div>
                        </div>

                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                  </div>
                </form>
                </div>
              </div>
            </div>

            
                <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Edit Data Ikan</h4>
                      </div>
                    <form class="form-horizantal" action="<?php echo e(url(action('dataIkanController@updateIkan'))); ?>" method="post">
                      <?php echo e(csrf_field()); ?>

                      <div class="modal-body">
                        <div class="row">
                            <div class="form-group">
                              <label for="editNamaIkan" class="col-md-4 control-label">Nama Ikan</label>
                              <div class="col-md-8">
                                <input type="text" name="editNamaIkan" id="editNamaIkan" value="" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="editFamili" class="col-md-4 control-label">Famili</label>
                              <div class="col-md-8">
                                <input type="text" name="editFamili"  id="editFamili" value="" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="editUmurProduktif" class="col-md-4 control-label">Umur Produktif</label>
                              <div class="col-md-8">
                                <input type="text" name="editUmurProduktif" id="editUmurProduktif" value="" class="form-control">
                              </div>
                            </div>
                            <input type="hidden" name="idIKan"  id="idIkan" value="">
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                      </div>
                    </form>
                    </div>
                  </div>
                </div>

        <table class="table table-bordered table-responsive">
          <tr>
            <th>Id</th>
            <th>Nama Ikan</th>
            <th>Famili</th>
            <th>Umur produktif</th>
            <th>kontrol</th>
          </tr>
          <?php $__currentLoopData = $tabelIkan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabelIkan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
              <td><?php echo e($tabelIkan->id); ?></td>
              <td><?php echo e($tabelIkan->namaIkan); ?></td>
              <td><?php echo e($tabelIkan->famili); ?></td>
              <td><?php echo e($tabelIkan->umur_produktif); ?></td>
              <td style="text-align:center">
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#edit" onclick="edit(<?php echo e($tabelIkan->id); ?>)" name="edit">Edit</button>
                <a href="/hapusIkan/<?php echo e($tabelIkan->id); ?>"><button type="button" class="btn btn-danger" name="delete">Hapus</button></a>
              </td>
            </tr>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </table>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">List Spesies</div>
      <div class="panel-body">
        <select class="form-control" id="cbIkan" onchange="showSpesies()" name="">
          <?php $__currentLoopData = $cbIkan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cbIkan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($cbIkan->id); ?>"><?php echo e($cbIkan->namaIkan); ?></option>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
        <br>
        <table class="table table-bordered" id="tbSpesies">
          <tr>
            <th>Id Spesies</th>
            <th>Nama Spesies</th>
          </tr>
        </table>
      </div>
    </div>
    <script type="text/javascript">
      var idIkan = 0;
      function edit(id) {
        idIkan = id;
        $("#idIkan").val(idIkan);
        <?php
        foreach ($tabelIkan2 as $tabelIkan) {
          echo "if($tabelIkan->id==idIkan){
          document.getElementById('editNamaIkan').value = \"$tabelIkan->namaIkan\";
          document.getElementById('editFamili').value = \"$tabelIkan->famili\";
          document.getElementById('editUmurProduktif').value = \"$tabelIkan->umur_produktif\";
          };";
        }

        ?>
      }
      function showSpesies() {
        var cbIkan = $("#cbIkan").val();
        $("#tbSpesies").html("<tbody id='bodySpesies'></tbody>");
        $('#bodySpesies').append('<tr><th>Id Spesies</th><th>Nama Spesies</th></tr>');
        <?php
          foreach ($tabelSpesies as $tabelSpesies) {
            echo "if($tabelSpesies->id_ikan==cbIkan){
              // document.getElementById('tbSpesies').innerHTML = '<tr><th>test</th><th>test</th></tr>';
              $('#bodySpesies').append('<tr><td>$tabelSpesies->id_spesies</td><td>$tabelSpesies->nama_spesies</td></tr>');
              // alert('test');
            }";
          }
        ?>
      }
    </script>
  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>