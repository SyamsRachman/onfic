<?php $__env->startSection('script'); ?>
  $('#kolamDiskusi').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Kolam Diskusi'); ?>

<?php $__env->startSection('main'); ?>
  <script type="text/javascript">
  </script>
  <div class="row">
    <div class="container-fluid">

    <header>
      <a href="kolamDiskusi/tambahArtikel"><button type="button" class="btn btn-default" name="button"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Tambah Diskusi</button></a>
    </header>
  </div>
  </div>
  <br>
  <div class="row">
    <?php $__currentLoopData = $tabelDiskusi; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabelDiskusi): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="col-sm-6 col-md-4 col-lg-4 col-lg-4"> 
      <div class="thumbnail">
        <div class="caption" style="height:300px;">
          <h3 style="height:75px;"><?php echo e($tabelDiskusi->judul); ?></h3>
          <p><?php echo \Illuminate\Support\Str::words($tabelDiskusi->isi, 30,'....'); ?></p>
          
          <p><a href="/kolamDiskusi/<?php echo e($tabelDiskusi->id); ?>" class="btn btn-primary" role="button">Baca</a></p>
        </div>
      </div>
    </div> 
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.users', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>