<?php $__env->startSection('script'); ?>
  $('#hitungPersentase').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Hitung Persentase'); ?>

<?php $__env->startSection('main'); ?>
  <script type="text/javascript">
    function isiSpesies1(){
      $("#sIkan1").html('<?php $__currentLoopData = $tabelSpesies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabelSpesies): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <option value="<?php echo e($tabelSpesies->id_spesies); ?>"><?php echo e($tabelSpesies->nama_spesies); ?></option><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>');
    }
  </script>
  <div class="row">
    <div class="col-md-4 col-md-offset-1">

      <h4 id="judul">Deskripsi Ikan Pertama</h4>
      <br>
      <form class="" action="index.html" method="post">
        <div class="form-group">
          <label for="nIkan1">Nama Ikan</label>
          <select class="form-control" id="nIkan1" name="nIkan1" onchange="isiSpesies1()">
            <?php $__currentLoopData = $tabelIkan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabelIkan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <option value="<?php echo e($tabelIkan->id); ?>"><?php echo e($tabelIkan->namaIkan); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </select>
        </div>
        <br>
        <div class="form-group">
          <label for="sIkan1">Spesies Ikan</label>
          <select class="form-control" id="sIkan1" name="sIkan1" >
            <option value="">Pilih Jenis Ikan Dulu</option>
          </select>
        </div>
        <br>
        <div class="form-group">
          <label for="uIkan1">Umur Ikan</label>
          <input class="form-control" id="uIkan1" type="text" placeholder="Umur dalam bulan">
        </div>
        <br>
        <h6>Morfologi Ikan</h6>
          <div class="form-group">
            <label for="bIkan1">Bentuk Ikan</label>
            <input id="bIkan1" type="text" class="form-control" placeholder="Bentuk Ikan">
          </div>
          <div class="form-group">
            <label for="pIkan1">Panjang Ikan</label>
            <input id="pIkan1" type="text" class="form-control" placeholder="Panjang Ikan">
          </div>
          <div class="form-group">
            <label for="bIkan1">Berat Ikan</label>
            <input id="bIkan1" type="text" class="form-control" placeholder="Berat Ikan">
          </div>
      </form>
    </div>

    <div class="col-md-4 col-md-offset-2">
      <h4>Deskripsi Ikan Kedua</h4>
      <br>
      <form class="" action="index.html" method="post">
        <div class="form-group">
          <label for="nIkan2">Nama Ikan</label>
          <select class="form-control" id="nIkan2" name="nIkan2">
            <?php $__currentLoopData = $tabelIkan2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabelIkan2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <option value="<?php echo e($tabelIkan2->id); ?>"><?php echo e($tabelIkan2->namaIkan); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </select>
        </div>
        <br>
        <div class="form-group">
          <label for="sIkan2">Spesies Ikan</label>
          <select class="form-control" id="sIkan2" name="sIkan2">
            <option value="1">Spesies A</option>
            <option value="2">Spesies B</option>
            <option value="3">Spesies C</option>
          </select>
        </div>
        <br>
        <div class="form-group">
          <label for="uIkan2">Umur Ikan</label>
          <input id="uIkan2" type="text" class="form-control" placeholder="Umur dalam bulan">
        </div>
        <br>
        <h6>Morfologi Ikan</h6>
          <div class="form-group">
            <label for="bIkan2">Bentuk Ikan</label>
            <input id="bIkan2" type="text" class="form-control" placeholder="Bentuk Ikan">
          </div>
          <div class="form-group">
            <label for="pIkan2">Panjang Ikan</label>
            <input id="pIkan2" type="text" class="form-control" placeholder="Panjang Ikan">
          </div>
          <div class="form-group">
            <label for="bIkan2">Panjang Ikan</label>
            <input id="bIkan2" type="text" class="form-control" placeholder="Berat Ikan">
          </div>
      </form>
    </div>
    <div class="row">
      <br>
        <div class="col-md-4 col-md-offset-4">
          <div class="form-group">
            <label for="sIkan1">Media Perkawinan</label>
          <select class="form-control" id="mIkan2" name="mIkan2">
            <option value="1">Media A</option>
            <option value="2">Media B</option>
            <option value="3">Media C</option>
          </select>
        </div>
        <br>
        <div class="form-group">
          <label for="sIkan2">Teknik Perkawinan</label>
          <select class="form-control" id="tIkan2" name="tIkan2">
            <option value="1">Teknik A</option>
            <option value="2">Teknik B</option>
            <option value="3">Teknik C</option>
          </select>
        </div>
          <button class="btn btn-success" type="submit" name="action">Submit</button>
        </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.users', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>