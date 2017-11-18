<?php $__env->startSection('script'); ?>
  $('#pantauDiskusi').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Kolam Diskusi'); ?>

<?php $__env->startSection('main'); ?>
  <div class="container-fluid">
    <div class="page-header">
    <h1><?php echo e($tabelDiskusi->judul); ?></h1>
    <div class="left">
      <button type="button" class="btn btn-default" name="button"><span class="glyphicon glyphicon-ok"></span> Verifikasi</button>
      <button type="button" class="btn btn-default" name="button"><span class="glyphicon glyphicon-trash"></span> Hapus</button>
    </div>
    </div>
    <p><?php echo e($tabelDiskusi->isi); ?></p>

  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>